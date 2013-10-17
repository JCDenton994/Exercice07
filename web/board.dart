part of mouseandcheese;

// Create the canvas

class Board {
  static const num X = 0;
  static const num Y = 0;
  
  CanvasElement canvas;
  CanvasRenderingContext2D ctx;
  num width;
  num height;
  num startmouseX;
  num startmouseY;
  num startcheeseX;
  num startcheeseY;
  num dx = 2;
  num dy = 4;
  
  Mouse mouse;
  Cheese cheese;
  
Board(this.canvas){
  ctx = canvas.getContext("2d");
  width = canvas.width;
  height = canvas.height;
  border();
  startmouseX = width ~/ 2;
  startmouseY = height ~/ 2;
  startcheeseX = new Random().nextInt(500);
  startcheeseY = new Random().nextInt(450);    
  init();  
}

void init(){
  mouse = new Mouse(this, startmouseX, startmouseY, 10);
  cheese = new Cheese(this, startcheeseX, startcheeseY, 5);
  window.animationFrame.then(gameLoop);
}

void gameLoop(num delta){
  if(redraw()){
    window.animationFrame.then(gameLoop);
  }
}

void border(){
  ctx.beginPath();
  ctx.fillStyle = "#336633";
  ctx.rect(X, Y, width, height);
  ctx.closePath();
  ctx.fill();
}

void clear(){
  ctx.clearRect(X, Y, width, height);
  border();
}

bool redraw() {
  clear();
  cheese.draw();

  // Move the north side racket if the left or the right key is pressed.
  if (mouse.rightDown) {
    if (mouse.x < width - X - 4) mouse.x += 5;
  } else if (mouse.leftDown) {
    if (mouse.x > X + 4) mouse.x -= 5;
  } else if (mouse.upDown) {
    if (mouse.y > Y + 4) mouse.y -= 5;
  } else if (mouse.downDown) {
    if (mouse.y > Y + 4) mouse.y += 5;
  }
  mouse.draw();
  
  if (mouse.x <= (cheese.x+10) && cheese.x <= (mouse.x+10) && mouse.y <= (cheese.y+10) && cheese.y <= (mouse.y+10)){
    window.alert('Yummy Yummy!!');
    return false;
  }
  return true;
  
  
  
}
 
}