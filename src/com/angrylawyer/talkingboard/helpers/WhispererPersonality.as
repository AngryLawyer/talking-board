package com.angrylawyer.talkingboard.helpers
{
    public class WhispererPersonality extends BasePersonality 
    {
        public function WhispererPersonality():void
        {
            super();
            
            for(var i:int = 0; i < 2; ++i)
            {
                var sentence:String = '';
                for (var j:int = 0; j< 5; ++j)
                {
                    sentence += String.fromCharCode(Math.floor(Math.random() * 26) + 96);
                }
                sentences.push(sentence);
            }
            sentences.push('wana : a secret');
            sentences.push('3 days');
            sentences.push('.');
        }

        public override function getSpeed():Number
        {
            return 0.02;
        }

        public override function getPauseLength():int
        {
            return 10;
        }
    } 
}
