class Hulk extends Enemy{
 
  Hulk(float x, float y){
   position = new PVector(x, y);
   status = true;
   r = 30;
   orientation = 0;
   velocity = new PVector(0, 0);
  }
  
  void integrate() {
    if(currentLevel.freeze == 0 && screenView == gameScreen && player.lives > 0){
      collisionCheck();
      Family closest = closestFamilyMember();
      if(closest.status && targetFound(closest.position.x, closest.position.y)){
        goTowards(closest.position.x, closest.position.y, 1);
      }else{
        velocity.x = cos(orientation) ;
        velocity.y = sin(orientation) ;
    
        position.add(velocity) ;
    
        // randomly update orientation a little
        orientation += random(0, PI/32) - random(0, PI/32) ;
        // Keep in bounds
        if (orientation > PI) orientation -= 2*PI ;
        else if (orientation < -PI) orientation += 2*PI ;
      }
    }
  }
 
  
}
