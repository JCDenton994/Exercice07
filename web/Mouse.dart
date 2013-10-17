part of mouseandcheese;

class Mouse {

  Board board;

  num x;
  num y;
  num r;

  bool rightDown = false;
  bool leftDown = false;
  bool upDown = false;
  bool downDown = false;

  Mouse(this.board, this.x, this.y, this.r) {
    draw();
    document.onKeyDown.listen(onKeyDown);
    document.onKeyUp.listen(onKeyUp);
  }

  void draw() {
    board.ctx.beginPath();
    board.ctx.fillStyle = "#FFFFFF";
    board.ctx.arc(x, y, r, 0, PI*2, true);
    board.ctx.closePath();
    board.ctx.fill();
  }

  // Set rightDown or leftDown if the right or left keys are down.
  void onKeyDown(event) {
    if (event.keyCode == 39) {
      rightDown = true;
    } else if (event.keyCode == 37) {
      leftDown = true;
    } else if (event.keyCode == 38) {
      upDown = true;
    } else if (event.keyCode == 40) {
      downDown = true;
    }
  }

  // Unset rightDown or leftDown when the right or left key is released.
  void onKeyUp(event) {
    if (event.keyCode == 39) {
      rightDown = false;
    } else if (event.keyCode == 37) {
      leftDown = false;
    } else if (event.keyCode == 38) {
      upDown = false;
    } else if (event.keyCode == 40) {
      downDown = false;
    }
    }
}

