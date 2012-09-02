package com.angrylawyer.talkingboard.helpers
{
    public class SlendermanPersonality extends BasePersonality 
    {
        public function SlendermanPersonality():void
        {
            super();
            sentences = new <String>[
                'iamoutsideletmein',
                'lookatwindow',
                'slenderman',
                'slendermanslendermanslenderman',
                '987654321.'
            ];
        }

        public override function get speed():Number
        {
            return 0.11;
        }

        public override function get pauseLength():int
        {
            return 8;
        }
    } 
}
