package com.angrylawyer.talkingboard.helpers
{
    import mx.collections.ArrayCollection;
    import mx.controls.Alert;

    public class BasePersonality 
    {
        protected var sentences:ArrayCollection = new ArrayCollection([]);

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

        public function getNextWord():ArrayCollection
        {
            if (hasMoreWords())
            {
                return SentenceBuilder.generateSentence(String(sentences.removeItemAt(0).toUpperCase()));
            }
            else
            {
                return new ArrayCollection([]);
            }
        }
    } 
}
