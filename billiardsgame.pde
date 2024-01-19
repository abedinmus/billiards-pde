Table table;
int ball_diam = 25;
float power;
float friction = .970;
float remainingtime; //variable for the remaining time in the game
float time = 1000; //sets a variable at 5000 to be decremented
boolean start = true; //defines a boolean value that initializes when the game starts
boolean ball_in_hole = false; //defines a variable that can change when a ball rolls into a hole
int score_counter = 0;
int strike_counter = 0;
int strike_count = 0;

import ddf.minim.*;

Minim minim;
AudioPlayer collide;


void setup()
{
  size(1250, 550);
  table = new Table();
  init_balls();
  table.draw_table();
  minim = new Minim(this);
  collide = minim.loadFile("POOL-Pool_Shot-709343898.mp3");
}

void draw() 
{
  table.draw_table();
  table.update();
  table.draw_balls();
  power = powerControl(power);
  check_cue();
  collisions();
  lose();
  Restart_conditions();  
  pointer();  
  displayScore();
}
