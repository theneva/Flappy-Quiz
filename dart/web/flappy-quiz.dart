import 'dart:html';
import 'dart:async';

int velocity = 4;
Position position = new Position(10, 50);

int jumpHeight = 25;
double gravity = 0.4;

DivElement canvas = querySelector('#canvas');
DivElement box = querySelector('#box');

void main() {
  updateBoxPosition();

  // 60 fps = 16 ms
  new Timer.periodic(new Duration(milliseconds: 16), update);

  canvas.onClick.listen(jump);
}

void jump(MouseEvent event) {
  position.y -= jumpHeight;
}

void update(Timer timer) {
  position.x += velocity;
  position.y += gravity;
  updateBoxPosition();
}

void updateBoxPosition() {
  box.style.left = position.x.toString() + "px";
  box.style.top = position.y.toString() + "px";
}

class Position {
  int x;
  int y;

  Position(this.x, this.y);
}
