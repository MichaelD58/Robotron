import java.util.Hashtable;
import java.util.ArrayList;

final int menuScreen = 0,
  gameScreen = 1,
  walkable = 1,
  playableX = 1004,
  playableY = 720,
  verticalDividers = 12,
  horizontalDividers = 16,
  dividerWidth = playableX/horizontalDividers,
  dividerHeight = playableY/verticalDividers,
  lifeAddedCost = 10000,
  PLAYERVALUE = 2,
  STANDARDROBOTVALUE = 3,
  OBSTACLEVALUE = 4,
  HULKVALUE = 5,
  CONVERTERVALUE = 6,
  FAMILYVALUE = 7,
  FREEZEVALUE = 8,
  INVINCIBILITYVALUE = 9,
  BLOODHOUNDVALUE = 10;

int screenView = menuScreen,//Used to track the current screen the game is viewing
  score,
  level,
  colourTracker,
  time,
  livesAdded,
  obstacleColour;
  
int colours[][] =  {{255, 0, 0}, {255, 127, 0},{255, 255, 0},{0, 255, 0},{0, 0, 255},{75, 0, 130},{148, 0, 211}},
    fontColour[];
  
PFont font;

Level currentLevel;

Player player;

enum state {//Three possible states for a level
  ongoing,
  won,
  lost
}

import ddf.minim.*;

Minim minim;
AudioPlayer gameMusic;
AudioPlayer playerShoot;
AudioPlayer extraLife;
AudioPlayer playerDamage;
AudioPlayer gameOver;
AudioPlayer standardDestroyed;
AudioPlayer obstacleDestroyed;
AudioPlayer converterDestroyed;
AudioPlayer convert;
AudioPlayer familySaved;
AudioPlayer familyDeath;
AudioPlayer freeze;
AudioPlayer invincibility;
