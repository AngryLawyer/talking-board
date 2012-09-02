package com.angrylawyer.talkingboard.helpers
{
    public class TomPersonality extends BasePersonality 
    {
        public function TomPersonality():void
        {
            super();
            sentences = new <String>[
                'hi',
                'my name is tom',
                'how are you',
                'i will be here forever now'
            ];
        }

        public override function get speed():Number
        {
            return 0.12;
        }

        public override function get pauseLength():int
        {
            return 2;
        }
    } 
}
