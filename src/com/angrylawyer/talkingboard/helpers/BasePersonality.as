package com.angrylawyer.talkingboard.helpers
{
    public class BasePersonality 
    {
        protected var sentences:Array = new Array([]);

        public function getSpeed():Number
        {
            return 0;
        }

        public function getPauseLength():int
        {
            return 0;
        }

        public function hasMoreWords():Boolean
        {
            return (sentences.length > 0);
        }

        public function getNextWord():Array
        {
            if (hasMoreWords())
            {
                return SentenceBuilder.generateSentence(String(sentences.removeItemAt(0).toUpperCase()));
            }
            else
            {
                return new Array([]);
            }
        }
    } 
}
