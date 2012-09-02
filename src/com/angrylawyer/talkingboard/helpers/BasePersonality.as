package com.angrylawyer.talkingboard.helpers
{
    import com.angrylawyer.talkingboard.vo.Glyph;

    /**
     * The superclass of all personalities,
     * Personalities are used for giving life to the planchette
     * Derive a class and populate sentences to make your own!
     */
    public class BasePersonality 
    {
        protected var sentences:Vector.<String> = new Vector.<String>();

        public function get speed():Number
        {
            return 0;
        }

        public function get pauseLength():int
        {
            return 0;
        }

        public function hasMoreSentences():Boolean
        {
            return (sentences.length > 0);
        }

        public function getNextSentence():Vector.<Glyph>
        {
            if (hasMoreSentences())
            {
                return SentenceBuilder.generateSentence(sentences.shift().toUpperCase());
            }
            else
            {
                return new Vector.<Glyph>();
            }
        }
    } 
}
