package com.angrylawyer.talkingboard.vo
{
    import flash.geom.Point;

    public class Glyph
    {
        public var position:Point = null;
        public var character:String = "";

        public function Glyph(character : String, position : Point)
        {
            this.position = position;
            this.character = character;
        }
    }
}
