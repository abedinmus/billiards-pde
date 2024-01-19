class Table
{
 Ball [] b_arr; //the length of this array can be 1 for
 Stick st;
 //More code
 
 void draw_balls()
 {
   for(int i = 0; i < b_arr.length; i++)
   {
     b_arr[i].display();
   }
   
 }
 
 void draw_table()
 {
   
    background(50, 100, 70);
    fill(90, 40, 40);
    stroke(90,40,40);
    rect(0, 0, 1250, 50);
    rect(0, 500, 1250, 50);
    rect(0, 0, 50, 550);
    rect(1200, 0, 50, 550);
    fill(255);
    strokeWeight(4);
    ellipse(60, 60, 50, 50);
    ellipse(60, 490, 50, 50);
    ellipse(1190, 60, 50, 50);
    ellipse(1190, 490, 50, 50);
    stroke(0);
    strokeWeight(1);
    remainingtime = time - millis()/100;
    fill(255);
    
    String time = "Time:" + " " + str(remainingtime);
    textSize(25);
    text(time, 725, 50);
    text("Click Mouse to start", 100, 515);
    text("Press Shift to reset", 100, 540);
    
  stroke(#FFFFFF);
  fill(#FFFFFF);
  textSize(20);
  text("Strike: " + (strike_count), width - 150, 20);
  
    stroke(#FFFFFF);
  fill(#FFFFFF);
  textSize(20);
  text("Made by Aadrita Anjishu(30018904) and Mustayeen Abedin(30021056)", 450, 530);
 }
  void update()
 {
   for(int i = 0; i < b_arr.length; i++)
   {
     b_arr[i].movement_ball();
   }   
   for(int i = 0; i < b_arr.length; i++)
   {
     b_arr[i].boundary();
   }
 }

 
}