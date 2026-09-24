#include <stdio.h>
#include "mystrfunctions.h"
#include "myfilefunctions.h"

int main() {
    printf("=== OS Assignment 01: Multi-file Build Test ===\n");
    
    char *test_str = "Hello, Data Science & OS!";
    printf("Test String: \"%s\"\n", test_str);
    printf("Calculated Length: %d\n", my_strlen(test_str));

    char dest[50];
    my_strcpy(dest, test_str);
    printf("Copied String: \"%s\"\n", dest);

    return 0;
}
