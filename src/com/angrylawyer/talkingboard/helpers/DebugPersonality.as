package com.angrylawyer.talkingboard.helpers
{
    public class DebugPersonality extends BasePersonality 
    {
        public function DebugPersonality():void
        {
            super();
            sentences = new <String>['abcdefgjijklmnopqrstuvwxyz;:.'];
        }

        public override function getSpeed():Number
        {
            return 0.05;
        }

        public override function getPauseLength():int
        {
            return 0;
        }
    } 
}
