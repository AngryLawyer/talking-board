package com.angrylawyer.talkingboard.controls
{
    import mx.core.BitmapAsset;
    import flash.display.Sprite;

    public class Planchette extends Sprite
    {

        [Embed(source="../../../../../assets/planchette.png")]
        private var Graphic:Class;

        public function Planchette():void
        {
            var graphic:BitmapAsset = new Graphic();
            addChild(graphic);
        }
    }
}
