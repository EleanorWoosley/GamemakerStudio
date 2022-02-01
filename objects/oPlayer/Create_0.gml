///@description Creating variables
//code that runs once when player is created

// how many pixles per frame we want our player to move
xSpeed = 4;


// what direction the player is facing. 1=right, -1=left, 0=not moving
xDirection = 0;

//Directional movemont variables
xVector = xSpeed * xDirection;

yVector = 0;

//setting gravity
grv = 0.2;

jumpForce = -10;

//coins and points

global.coins = 0;

//invincibility 
isInvinsible = false

//health points
hp = 6;