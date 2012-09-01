package com.angrylawyer.talkingboard.helpers
{
    public class LizziePersonality extends BasePersonality 
    {
        public function LizziePersonality():void
        {
            super();
            sentences = new Array([
                'lizzie borden took an axe',
                'and gave her father 40 whacks',
                'and when she saw whay she had done',
                'she gave her mother 41'
            ]);
        }

        public override function getSpeed():Number
        {
            return 0.07;
        }

        public override function getPauseLength():int
        {
            return 100;
        }
    } 
}
