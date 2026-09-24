#include "myfilefunctions.h"
#include <stdio.h>

int count_lines(const char *filename) {
    FILE *file = fopen(filename, "r");
    if (!file) return -1;
    int count = 0;
    char ch;
    while ((ch = fgetc(file)) != EOF) {
        if (ch == '\n') {
            count++;
        }
    }
    fclose(file);
    return count;
}
