package com.angrylawyer.talkingboard.helpers
{
    public class GarbagePersonality extends BasePersonality 
    {
        public function GarbagePersonality():void
        {
            super();
            var newSentences:Vector.<String> = new Vector.<String>();

            for(var i:int = 0; i< Math.floor(Math.random() * 10); ++i)
            {
                var sentence:String = '';
                for (var j:int = 0; j< Math.floor(Math.random() * 10); ++j)
                {
                    sentence += String.fromCharCode(Math.floor(Math.random() * 26) + 96);
                }
                newSentences.push(sentence);
            }

            sentences = newSentences;
        }

        public override function get speed():Number
        {
            return Math.random() / 10;
        }

        public override function get pauseLength():int
        {
            return Math.floor(Math.random() * 10);
        }
    } 
}
