package 
{
    import mx.core.BitmapAsset;
    import flash.display.Sprite;

    public class main extends Sprite 
    {
        [Embed(source="../assets/board.jpg")]
        private var Background:Class;

        public function main():void
        {
            var background:BitmapAsset= new Background();
            addChild(background);
        }

    }
}
