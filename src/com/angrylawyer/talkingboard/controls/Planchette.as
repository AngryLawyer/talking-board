package com.angrylawyer.talkingboard.controls
{
    import mx.core.BitmapAsset;
    import flash.display.Sprite;
    import flash.geom.Point;
    import flash.filters.DropShadowFilter;
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import flash.events.MouseEvent;
    import flash.ui.Mouse;
    import flash.ui.MouseCursor;

    import com.greensock.TweenLite;
    import com.angrylawyer.talkingboard.helpers.Assets;
    import com.angrylawyer.talkingboard.vo.Glyph;
    import com.angrylawyer.talkingboard.helpers.SentenceBuilder;
    import com.angrylawyer.talkingboard.helpers.PersonalityManager;
    import com.angrylawyer.talkingboard.helpers.BasePersonality;

    public class Planchette extends Sprite
    {
        private const offset:Point = new Point(70, 72);
        private const minimumPossessionDelay:int = 0;
        private const randomPossessionDelay:int = 30;

        private var lastMousePosition:Point = null;
        private var relativeGripPoint:Point = null;
        private var possessionTimer:Timer = null;
                
        private var glyphs:Vector.<Glyph> = new Vector.<Glyph>(); //TODO: Consider Vector
        private var possessed:Boolean = false;
        private var currentPersonality:BasePersonality = null;

        private var mover:TweenLite = null;

        public function Planchette():void
        {
            var graphic:BitmapAsset = new Assets.Planchette();
            addChild(graphic);
            applyShadow();
            initializeListeners();
        }

        public function initializePosition(width:int, height:int):void
        {
            this.x = (width/2)-(offset.x);
            this.y = (height/2)-(offset.y);
        }

        private function onMouseDown(event:MouseEvent):void
        {
            lastMousePosition = new Point(event.stageX, event.stageY);
            relativeGripPoint = new Point(event.localX, event.localY);
            //Kill the old timer
            if (possessionTimer != null)
            {
                clearPosessionTimer();
            }
            possessionTimer = new Timer(1000 * (minimumPossessionDelay + Math.floor(Math.random() * randomPossessionDelay)), 1);
            possessionTimer.addEventListener(TimerEvent.TIMER_COMPLETE, startPossession, false, 0, true);
            possessionTimer.start();
        }

        private function onMouseMove(event:MouseEvent):void
        {
            if (possessionTimer != null)
            {
                possessionTimer.reset();
                possessionTimer.start();
            }
            if (lastMousePosition != null)
            {
                if (!possessed)
                {
                    this.x = event.stageX - relativeGripPoint.x;
                    this.y = event.stageY - relativeGripPoint.y;
                }
                lastMousePosition = new Point(event.stageX, event.stageY); 
            }
        }

        private function onMouseOut(event:MouseEvent):void
        {
            Mouse.cursor=MouseCursor.AUTO;
            controlLost();
        }

        private function onMouseUp(event:MouseEvent):void
        {
            controlLost();
        }

        private function onMouseOver(event:MouseEvent):void
        {
            Mouse.cursor=MouseCursor.BUTTON;
        }

        private function clearPosessionTimer():void
        {
            possessionTimer.removeEventListener(TimerEvent.TIMER_COMPLETE, startPossession);
            possessionTimer.stop();
            possessionTimer = null;
        }

        private function startPossession(event : TimerEvent = null):void
        {
            stopPossession();
            if (possessionTimer != null)
            {
                clearPosessionTimer();
            }
            //Pick a personality..

            if (!currentPersonality || currentPersonality.hasMoreWords() == false)
            {
                currentPersonality = PersonalityManager.getPersonality();
            }
            //Pick a sentence
            //Start the magic
            possessed = true;
            initiateMovement(currentPersonality.getNextWord());
        }

        private function stopPossession():void
        {
            possessed = false;
            glyphs = new Vector.<Glyph>();
            killTween();
        }

        private function controlLost():void
        {
            lastMousePosition = null;
            relativeGripPoint = null;
            if (possessionTimer != null)
            {
                clearPosessionTimer();
            }
            stopPossession();
        }

        public function initiateMovement(letterList:Vector.<Glyph>):void
        {
            glyphs = letterList;
            nextMove();
        }

        private function nextMove():void
        {
            if (possessed == false)
                return;

            var initialPause:Boolean= false;

            if (glyphs.length == 0)
            {
                initialPause = true;
                if (currentPersonality.hasMoreWords())
                {
                    glyphs = currentPersonality.getNextWord();
                }
                else
                {
                    currentPersonality = PersonalityManager.getPersonality();
                    glyphs = currentPersonality.getNextWord();
                }
            }

            var nextGlyph:Glyph = glyphs.shift();

            killTween();

            var distance:Number = calculateDistance(this.x - offset.x, 
                                                    this.y - offset.y, 
                                                    nextGlyph.position.x - offset.x,
                                                    nextGlyph.position.y - offset.y);

            var duration:Number = distance * currentPersonality.getSpeed();
            trace(duration);

            mover = new TweenLite(this, duration, {
                x: nextGlyph.position.x - offset.x,
                y: nextGlyph.position.y - offset.y,
                onComplete: nextMove
            });

            if (!initialPause)
            {
                mover.delay = currentPersonality.getPauseLength();
            }
            else
            {
                mover.delay = currentPersonality.getPauseLength() * 2;
            }
           
            mover.play();
        }

        private function killTween():void
        {
            if (mover)
            {
                mover.kill();
                mover = null;
            }
        }

        private function calculateDistance(x1:Number, y1:Number, x2:Number, y2:Number):Number
        {
            return Math.sqrt(Math.abs((x2-x1)*(x2-x1)) + Math.abs((y2-y1)*(y2-y1)));
        }

        private function applyShadow():void
        {
            var shadow:DropShadowFilter = new DropShadowFilter();
            shadow.distance = 5;
            shadow.angle = 25;
            this.filters = [shadow];
        }

        private function initializeListeners():void
        {
            addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown, false, 0, true);
            addEventListener(MouseEvent.MOUSE_MOVE, onMouseMove, false, 0, true);
            addEventListener(MouseEvent.ROLL_OVER, onMouseOver, false, 0, true);
            addEventListener(MouseEvent.ROLL_OUT, onMouseOut, false, 0, true);
            addEventListener(MouseEvent.MOUSE_UP, onMouseUp, false, 0, true);
            addEventListener(MouseEvent.MOUSE_OUT, onMouseOut, false, 0, true);
        }
    }
}
