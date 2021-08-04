
    public static final int WIDTH = 640;
    public static final int HEIGHT = 480;
    public static final int DIAMETER = 25;
    int x1 = 0, x2 = 0, x3 = 0, x4 = 0;
    Balls ballOne = new Balls(0, 1*HEIGHT/5, DIAMETER, 1);
    Balls ballTwo = new Balls(0, 2*HEIGHT/5, DIAMETER, 2);
    Balls ballThree = new Balls(0, 3*HEIGHT/5, DIAMETER, 3);
    Balls ballFour = new Balls(0, 4*HEIGHT/5, DIAMETER, 4);

    
    public class Balls{
        private int initX;
        private int initY;
        private int diameter;
        private int velocity_factor;

        public Balls(int initX, int initY, int diameter, int velocity_factor){
            this.initX = initX;
            this.initY = initY;
            this.diameter = diameter;
            this.velocity_factor = velocity_factor;
        }
        void draw(){
            ellipse(initX, initY, diameter, velocity_factor);
            initX += velocity_factor;
        }
    }
    @Override
    public void setup() {
        super.setup();

    }

    @Override
    public void settings() {
        super.settings();
        size(WIDTH, HEIGHT);
    }

    @Override
    public void draw() {
        drawCircles();
    }

    private void drawCircles() {
        ballOne.draw();
        ballTwo.draw();
        ballThree.draw();
        ballFour.draw();

    }
