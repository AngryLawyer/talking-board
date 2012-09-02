package com.angrylawyer.talkingboard.vo
{
    import flash.geom.Point;

    /**
     * Glyphs are simple representations of how a character
     * maps to a coordinate in the world
     */
    public class Glyph
    {
        private var _position:Point = null;
        private var _character:String = "";

        public function Glyph(character : String, position : Point)
        {
            _position = position;
            _character = character;
        }

        public function get position():Point
        {
            return _position;
        }

        public function get character():String
        {
            return _character;
        }
    }
}
