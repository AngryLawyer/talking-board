package com.angrylawyer.talkingboard.helpers
{
    import com.angrylawyer.talkingboard.vo.Glyph;

    public class BasePersonality 
    {
        protected var sentences:Vector.<String>= new Vector.<String>();

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

        public function getNextWord():Vector.<Glyph>
        {
            if (hasMoreWords())
            {
                return SentenceBuilder.generateSentence(String(sentences.shift().toUpperCase()));
            }
            else
            {
                return new Vector.<Glyph>();
            }
        }
    } 
}
