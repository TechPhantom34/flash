package {
    import flash.display.Sprite;
    import flash.display.Shape;
    import flash.events.MouseEvent;
    import flash.text.TextField;

    public class oyun extends Sprite {
        private var puan:int = 0;
        private var metin:TextField = new TextField();

        public function oyun() {
            // Arka planı beyaz yapalım (SWF'lerde önemlidir)
            graphics.beginFill(0xFFFFFF);
            graphics.drawRect(0, 0, 400, 400);
            graphics.endFill();

            // Puan metni
            metin.text = "Puan: 0";
            metin.x = 20; metin.y = 20;
            addChild(metin);

            // Kırmızı bir top (Hedef)
            var hedef:Sprite = new Sprite();
            hedef.graphics.beginFill(0xFF0000);
            hedef.graphics.drawCircle(0, 0, 30);
            hedef.graphics.endFill();
            hedef.x = 200; hedef.y = 200;
            hedef.buttonMode = true;
            addChild(hedef);

            // Tıklama olayı
            hedef.addEventListener(MouseEvent.CLICK, function(e:MouseEvent):void {
                puan++;
                metin.text = "Puan: " + puan;
                hedef.x = Math.random() * 300 + 50;
                hedef.y = Math.random() * 300 + 50;
            });
        }
    }
}
