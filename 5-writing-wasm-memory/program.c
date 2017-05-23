void consoleLog (char* offset, int len);

char inStr[20];
char outStr[20];

char* getInStrOffset () {
  return &inStr[0];
}

void toLowerCase () {
  for (int i = 0; i < 20; i++) {
    char c = inStr[i];
    if (c > 64 && c < 91) {
      c = c + 32;
    }
    outStr[i] = c;
  }
  consoleLog(&outStr[0], 20);
}
