
#include <stdio.h>
#include <string.h>

extern "C"
{
  typedef enum { red, blue } colors_t;

  void c_integer(int i, int j, colors_t color)
  {
    printf("C code: i=%i, j=%i, color=%i\n", i, j, color);
  }
}
