module main;

import io.console;

import geometry.circle;

void puts(char[] str) {
  auto output = new Console;
  output.write(cast(ubyte[])str);
  output.write(cast(ubyte[])"\n");
}

int main(char[][] args) {
  puts("hello world");

  auto a = new Circle(0, 0, 50);
  auto b = new Circle(50, 0, 50);
  auto c = new Circle(100, 0, 50);

  if (a.intersects(b)) {
    puts("a and b intersect");
  }

  if (a.intersects(c)) {
    puts("a and c intersect");
  }

  if (b.intersects(c)) {
    puts("b and c intersect");
  }

  return 0;
}
