package com.angrylawyer.talkingboard.helpers
{
    public class DebugPersonality extends BasePersonality 
    {
        public function DebugPersonality():void
        {
            super();
            sentences = new <String>['abcdefgjijklmnopqrstuvwxyz;:.'];
        }

        public override function get speed():Number
        {
            return 0.05;
        }

        public override function get pauseLength():int
        {
            return 0;
        }
    } 
}
