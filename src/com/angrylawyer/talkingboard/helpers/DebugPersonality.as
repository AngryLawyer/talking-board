package com.angrylawyer.talkingboard.helpers
{
    import mx.collections.ArrayCollection;

    public class DebugPersonality extends BasePersonality 
    {
        public function DebugPersonality():void
        {
            super();
            sentences = new ArrayCollection([
                'abcdefgjijklmnopqrstuvwxyz;:.'
            ]);
        }

        public override function getSpeed():Number
        {
            return 0.05;
        }

        public override function getPauseLength():int
        {
            return 10;
        }
    } 
}
