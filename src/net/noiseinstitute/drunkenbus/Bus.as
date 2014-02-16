package net.noiseinstitute.drunkenbus {
    import net.flashpunk.Entity;
    import net.flashpunk.graphics.Image;
    import net.flashpunk.utils.Input;

    public class Bus extends Entity {
        [Embed(source="Bus.png")]
        private static const IMAGE:Class;

        private static const IMPULSE_MAGNITUDE:Number = 32;
        private static const IMPULSE_DECAY:Number = 0.8;

        private static const COUNTER_IMPULSE_MAGNITUDE:Number = 10;
        private static const COUNTER_IMPULSE_DECAY:Number = 0.9;

        private var impulse:Number = 0;
        private var counterImpulse:Number = 0;

        public function Bus() {
            var image:Image = new Image(IMAGE);
            image.centerOrigin();
            graphic = image;
        }


        override public function update():void {
            super.update();

            if (Input.pressed(Main.INPUT_LEFT)) {
                impulse -= 1;
                counterImpulse += 1;
            }

            if (Input.pressed(Main.INPUT_RIGHT)) {
                impulse += 1;
                counterImpulse -= 1;
            }

            x += impulse * IMPULSE_MAGNITUDE + counterImpulse * COUNTER_IMPULSE_MAGNITUDE;

            impulse *= IMPULSE_DECAY;
            counterImpulse *= COUNTER_IMPULSE_DECAY;
        }
    }
}
