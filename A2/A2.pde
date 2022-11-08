//reference
//https://www.youtube.com/watch?v=BoFIlfGNpl8&t=1112s

Target[] targets;
int n = 100;

void setup() {
  size (600, 600);
  targets = new Target[n];
  int i = 0;
  while (i < n) {
    targets[i] = new Target();
    i = i + 1;
  }
}

void draw() {
  background(0);
  int i = 0;
  while (i < n) {
    targets[i].show();
    targets[i].act();
    i = i + 1;

  }
}
