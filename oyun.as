package {
    import flash.display.Sprite;
    import flash.text.TextField;
    public class Oyun extends Sprite {
        public function Oyun() {
            var txt:TextField = new TextField();
            txt.text = "Selam! Bu gerçek bir SWF.";
            addChild(txt);
        }
    }
}
