#include <stdio.h>

int add(int, int);

int main()
{
    printf("Hello world\n");

    int res = add(10, 20);

    printf("result: %d\n", res);

    getchar();
}

int add(int a, int b)
{
    return a + b;
}