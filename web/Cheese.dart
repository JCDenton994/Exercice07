part of mouseandcheese;

class Cheese {

  Board board;

  num x;
  num y;
  num r;

  Cheese(this.board, this.x, this.y, this.r) {
    draw();
  }

  void draw() {
    board.ctx.beginPath();
    board.ctx.fillStyle = "#FFFF00";
    board.ctx.arc(x, y, r, 0, PI*2, true);
    board.ctx.closePath();
    board.ctx.fill();
  }

}
