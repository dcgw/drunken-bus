package net.noiseinstitute.drunkenbus {
    import net.flashpunk.World;

    public class GameWorld extends World {
        private var bus:Bus = new Bus();

        public function GameWorld() {
            bus = new Bus();
            bus.x = Main.WIDTH * 0.5;
            bus.y = Main.HEIGHT * 0.8;

            add(bus);
        }
    }
}
