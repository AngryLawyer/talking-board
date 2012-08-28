package com.angrylawyer.talkingboard.helpers
{
    import mx.collections.ArrayCollection;

    public class GarbagePersonality extends BasePersonality 
    {
        public function GarbagePersonality():void
        {
            super();
            var newSentences:ArrayCollection = new ArrayCollection([]);

            for(var i:int = 0; i< Math.floor(Math.random() * 10); ++i)
            {
                var sentence:String = '';
                for (var j:int = 0; j< Math.floor(Math.random() * 10); ++j)
                {
                    sentence += String.fromCharCode(Math.floor(Math.random() * 26) + 96);
                }
                newSentences.addItem(sentence);
            }

            sentences = newSentences;
        }

        public override function getSpeed():Number
        {
            return Math.random() / 10;
        }

        public override function getPauseLength():int
        {
            return Math.floor(Math.random() * 10);
        }
    } 
}
