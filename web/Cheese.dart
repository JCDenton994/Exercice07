part of mouseandcheese;

class Cheese {

  Board board;

  num x;
  num y;

  Cheese(this.board, this.x, this.y) {
    draw();
  }

  void draw() {
    board.ctx.beginPath();
    board.ctx.fillStyle = "#FFFF00";
    board.ctx.moveTo(x, y);
    board.ctx.lineTo(x+5,y-10);
    board.ctx.lineTo(x+10,y);
    board.ctx.closePath();
    board.ctx.fill();
  }

}
