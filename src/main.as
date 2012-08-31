package 
{
    import mx.core.BitmapAsset;
    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;

    import com.angrylawyer.talkingboard.controls.Planchette;

    public class main extends Sprite 
    {
        private const STAGE_WIDTH:uint = 800;
        private const STAGE_HEIGHT:uint = 520;

        [Embed(source="../assets/board.jpg")]
        private var Background:Class;

        public function main():void
        {
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;

            var background:BitmapAsset = new Background();
            addChild(background);
            addChild(new Planchette());
        }

    }
}
