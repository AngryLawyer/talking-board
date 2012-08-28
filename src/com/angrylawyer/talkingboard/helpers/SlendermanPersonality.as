package com.angrylawyer.talkingboard.helpers
{
    import mx.collections.ArrayCollection;

    public class SlendermanPersonality extends BasePersonality 
    {
        public function SlendermanPersonality():void
        {
            super();
            sentences = new ArrayCollection([
                'iamoutsideletmein',
                'lookatwindow',
                'slenderman',
                'slendermanslendermanslenderman',
                '987654321.'
            ]);
        }

        public override function getSpeed():Number
        {
            return 0.11;
        }

        public override function getPauseLength():int
        {
            return 5000;
        }
    } 
}
