package com.angrylawyer.talkingboard.helpers
{
    import mx.collections.ArrayCollection;

    public class ColdPersonality extends BasePersonality 
    {
        public function ColdPersonality():void
        {
            super();
            sentences = new ArrayCollection([
                'itscoldouthere',
                'coldcoldcoldcoldcold'
            ]);
        }

        public override function getSpeed():Number
        {
            return 0.03;
        }

        public override function getPauseLength():int
        {
            return 200;
        }
    } 
}
