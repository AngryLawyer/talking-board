package 
{
    import mx.core.BitmapAsset;
    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;

    import com.angrylawyer.talkingboard.helpers.Assets;
    import com.angrylawyer.talkingboard.controls.Planchette;

    public class main extends Sprite  //Rename to something more sensible
    {
        private const STAGE_WIDTH:uint = 800;
        private const STAGE_HEIGHT:uint = 520;

        public function main():void
        {
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;

            var background:BitmapAsset = new Assets.Background();
            addChild(background);

            var planchette:Planchette = new Planchette();
            addChild(planchette);
            planchette.initializePosition(STAGE_WIDTH, STAGE_HEIGHT);
        }

    }
}
