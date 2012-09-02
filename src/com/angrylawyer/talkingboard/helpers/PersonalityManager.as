package com.angrylawyer.talkingboard.helpers
{
    /**
     * Picks a random personality. To add more, just add an additional
     * array member with a function that produces a personality
     */
    public class PersonalityManager
    {
        // Vectors and first-class functions don't seem to mix well
        // So an array is used instead :(
        private static const personalities:Array = new Array(
            function():BasePersonality{return new SlendermanPersonality()},
            function():BasePersonality{return new ColdPersonality()},
            function():BasePersonality{return new LizziePersonality()},
            function():BasePersonality{return new TomPersonality()},
            function():BasePersonality{return new WhispererPersonality()},
            function():BasePersonality{return new GarbagePersonality()}
        );

        public static function getPersonality():BasePersonality
        {
            return personalities[Math.floor(Math.random() * personalities.length)]();
        }
    } 
}
