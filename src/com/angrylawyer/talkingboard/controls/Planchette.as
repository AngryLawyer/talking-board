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

    import com.angrylawyer.talkingboard.helpers.Assets;
    import com.angrylawyer.talkingboard.vo.Glyph;
    import com.angrylawyer.talkingboard.helpers.SentenceBuilder;
    import com.angrylawyer.talkingboard.helpers.PersonalityManager;
    import com.angrylawyer.talkingboard.helpers.BasePersonality;

    public class Planchette extends Sprite
    {
        private const offset:Point = new Point(70, 72);
        private const minimumPossessionDelay:int = 0;
        private const randomPossessionDelay:int = 15;

        private var lastMousePosition:Point = null;
        private var relativeGripPoint:Point = null;
        private var possessionTimer:Timer = null;
                
        private var glyphs:Array = new Array([]); //TODO: Consider Vector
        private var possessed:Boolean = false;
        private var currentPersonality:BasePersonality = null;

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
        }

        private function onMouseMove(event:MouseEvent):void
        {
        }

        private function onMouseOut(event:MouseEvent):void
        {
            Mouse.cursor=MouseCursor.AUTO;
        }

        private function onMouseUp(event:MouseEvent):void
        {
        }

        private function onMouseOver(event:MouseEvent):void
        {
            Mouse.cursor=MouseCursor.HAND;
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
