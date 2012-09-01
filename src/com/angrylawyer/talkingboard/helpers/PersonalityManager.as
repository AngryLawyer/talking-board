package com.angrylawyer.talkingboard.helpers
{
    public class PersonalityManager
    {
        public static function getPersonality():BasePersonality
        {
            switch(Math.floor(Math.random() * 6))
            {
                case 0:
                    return new SlendermanPersonality();
                    break;
                case 1:
                    return new ColdPersonality();
                    break;
                case 2:
                    return new LizziePersonality();
                    break;
                case 3:
                    return new TomPersonality();
                    break;
                case 4:
                    return new WhispererPersonality();
                    break;
                default:
                    return new GarbagePersonality();
                    break;
            }
        }
    } 
}
