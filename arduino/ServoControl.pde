/*
 *  Servo Control
*/

/*
 *  Stearing of the robot
 *
 *  1 : Left    2 : Forward
 *  4 : Right   3 : Backward
 *  0 : Stop
 *
*/

void robotControl(int a){
  switch(a){
    case 1 :
      //  Turn the sevo's backwards
      //  Because there flipped they turn opposite directions and make the robot spin
      leftServo.write(90 - speed);
      rightServo.write(90 - speed);
    break;
    case 2 :
      // Turn servo's opposite directions 
      // This will make the bot go forward
      leftServo.write(90 + speed);
      rightServo.write(90 - speed);
    break;
    case 3 :
      leftServo.write(90 + speed);
      rightServo.write(90 + speed);
    break;
    case 4 :
      leftServo.write(90 - speed);
      rightServo.write(90 + speed);
    break;
    case 0 :
      //  Stop both servo's
      leftServo.write(90);
      rightServo.write(90);
    break;
  }
}
