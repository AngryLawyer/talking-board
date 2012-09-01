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

        public override function getSpeed():Number
        {
            return 0.03;
        }

        public override function getPauseLength():int
        {
            return 5;
        }
    } 
}
