package com.angrylawyer.talkingboard.helpers
{
    public class ColdPersonality extends BasePersonality 
    {
        public function ColdPersonality():void
        {
            super();
            sentences = new <String>[
                'itscoldouthere',
                'coldcoldcoldcoldcold'
            ];
        }

        public override function get speed():Number
        {
            return 0.03;
        }

        public override function get pauseLength():int
        {
            return 5;
        }
    } 
}
