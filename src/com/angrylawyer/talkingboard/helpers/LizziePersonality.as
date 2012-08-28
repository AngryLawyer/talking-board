package com.angrylawyer.talkingboard.helpers
{
    import mx.collections.ArrayCollection;

    public class LizziePersonality extends BasePersonality 
    {
        public function LizziePersonality():void
        {
            super();
            sentences = new ArrayCollection([
                'lizzie borden took an axe',
                'and gave her father 40 whacks',
                'and when she saw whay she had done',
                'she gave her mother 41'
            ]);
        }

        public override function getSpeed():Number
        {
            return 0.07;
        }

        public override function getPauseLength():int
        {
            return 100;
        }
    } 
}