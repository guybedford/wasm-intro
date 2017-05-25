#include <stdlib.h>

struct Record {
  int id;
  float x;
  float y;
};

struct Record* createRecord (int id, float x, float y) {
  struct Record* record = malloc(sizeof(struct Record));
  record->id = id;
  record->x = x;
  record->y = y;
  return record;
}

void deleteRecord (struct Record* record) {
  free(record);
}
