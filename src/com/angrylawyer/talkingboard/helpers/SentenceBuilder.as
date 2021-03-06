package com.angrylawyer.talkingboard.helpers
{
    import com.angrylawyer.talkingboard.vo.Glyph;
    import flash.geom.Point;

    /**
     * SentenceBuilder converts standard strings into
     * vectors of Glyphs
     */
    public class SentenceBuilder
    {
        //TODO: Migrate these to ratios, so the board isn't a fixed size
        public static const YES:Glyph = new Glyph("YES", new Point(183, 74));
        public static const NO:Glyph = new Glyph("NO", new Point(615, 74));
        public static const GOODBYE:Glyph = new Glyph("GOODBYE", new Point(398, 469));

        public static const A:Glyph = new Glyph("A", new Point(93,  277));
        public static const B:Glyph = new Glyph("B", new Point(140, 218));
        public static const C:Glyph = new Glyph("C", new Point(197, 202));
        public static const D:Glyph = new Glyph("D", new Point(250, 180));
        public static const E:Glyph = new Glyph("E", new Point(295, 176));
        public static const F:Glyph = new Glyph("F", new Point(341, 169));
        public static const G:Glyph = new Glyph("G", new Point(393, 167));
        public static const H:Glyph = new Glyph("H", new Point(455, 165));
        public static const I:Glyph = new Glyph("I", new Point(501, 167));
        public static const J:Glyph = new Glyph("J", new Point(542, 177));
        public static const K:Glyph = new Glyph("K", new Point(587, 190));
        public static const L:Glyph = new Glyph("L", new Point(643, 205));
        public static const M:Glyph = new Glyph("M", new Point(706, 254));

        public static const N:Glyph = new Glyph("N", new Point(95,  346));
        public static const O:Glyph = new Glyph("O", new Point(143, 314));
        public static const P:Glyph = new Glyph("P", new Point(192, 290));
        public static const Q:Glyph = new Glyph("Q", new Point(240, 272));
        public static const R:Glyph = new Glyph("R", new Point(292, 258));
        public static const S:Glyph = new Glyph("S", new Point(339, 242));
        public static const T:Glyph = new Glyph("T", new Point(390, 242));
        public static const U:Glyph = new Glyph("U", new Point(445, 247));
        public static const V:Glyph = new Glyph("V", new Point(496, 254));
        public static const W:Glyph = new Glyph("W", new Point(558, 270));
        public static const X:Glyph = new Glyph("X", new Point(612, 293));
        public static const Y:Glyph = new Glyph("Y", new Point(654, 320));
        public static const Z:Glyph = new Glyph("Z", new Point(700, 358));

        public static const ONE:Glyph = new Glyph("1", new Point(185, 395));
        public static const TWO:Glyph = new Glyph("2", new Point(230, 395));
        public static const THREE:Glyph = new Glyph("3", new Point(278, 395));
        public static const FOUR:Glyph = new Glyph("4", new Point(326, 395));
        public static const FIVE:Glyph = new Glyph("5", new Point(371, 395));
        public static const SIX:Glyph = new Glyph("6", new Point(418, 395));
        public static const SEVEN:Glyph = new Glyph("7", new Point(464, 395));
        public static const EIGHT:Glyph = new Glyph("8", new Point(513, 395));
        public static const NINE:Glyph = new Glyph("9", new Point(564, 395));
        public static const ZERO:Glyph = new Glyph("0", new Point(610, 395));

        public static const SPACE:Glyph = new Glyph(" ", new Point(400, 260));
        public static const letters:Array = new Array(ZERO,ONE,TWO,THREE,FOUR,
            FIVE,SIX,SEVEN,EIGHT,NINE,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,
            U,V,W,X,Y,Z);

        public static function generateSentence(input : String):Vector.<Glyph>
        {
            const result:Vector.<Glyph> = new Vector.<Glyph>();
            for (var i:uint = 0; i < input.length; i++)
            {
                result.push(getLetter(input.charAt(i)));
            }
            return result;
        }
        
        private static function getLetter(input:String):Glyph
        {
            switch(input)
            {
                case ";": //Yes
                    return YES;
                    break;
                case ":": //NO
                    return NO;
                    break;
                case ".": //GOODBYE
                    return GOODBYE;
                    break;
            }

            var charCode:int = input.charCodeAt() - 48; //Rebase the ascii code to have 0 = 0

            if (charCode > 9) //Skip some of the operator symbols
                charCode -= 7;
            
            if (charCode >= 0 && charCode < letters.length)
                return letters[charCode] as Glyph;

            return SPACE;
        }
    }
}
