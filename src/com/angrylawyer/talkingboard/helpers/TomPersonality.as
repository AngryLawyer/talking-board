package com.angrylawyer.talkingboard.helpers
{
    import mx.collections.ArrayCollection;

    public class TomPersonality extends BasePersonality 
    {
        public function TomPersonality():void
        {
            super();
            sentences = new ArrayCollection([
                'hi',
                'my name is tom',
                'how are you',
                'i will be here forever now'
            ]);
        }

        public override function getSpeed():Number
        {
            return 0.12;
        }

        public override function getPauseLength():int
        {
            return 2000;
        }
    } 
}
