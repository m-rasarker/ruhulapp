
abstract class Vehicle{
  int? _speed;
  move();

  set setSpeed(int speed){
    _speed= speed;
  }

}



class car extends Vehicle{
  @override
  move() {
    // TODO: implement move
    print("The car is Moving $_speed km/h");
  }
  speed( int speedValue)
  {
    _speed= speedValue;

  }
}



main(){
  car  carobJ = car();
  //carobJ.setSpeed(200);
  carobJ.speed(30);
   carobJ.move();
}
