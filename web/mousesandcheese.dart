library mouseandcheese;

import 'dart:html';
import 'dart:async';
import 'dart:math';

part 'board.dart';
part 'Mouse.dart';
part 'Cheese.dart';

void main(){
  CanvasElement canvas = document.query('#canvas');
  Board board = new Board(canvas);
  
}


