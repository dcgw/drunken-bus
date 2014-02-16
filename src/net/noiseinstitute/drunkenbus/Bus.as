package net.noiseinstitute.drunkenbus {
    import net.flashpunk.Entity;
    import net.flashpunk.graphics.Image;

    public class Bus extends Entity {
        [Embed(source="Bus.png")]
        private static const IMAGE:Class;

        public function Bus() {
            var image:Image = new Image(IMAGE);
            image.centerOrigin();
            graphic = image;
        }
    }
}
