#define __USE_MINGW_ANSI_STDIO 0

#include <stdio.h>
#include <stdlib.h>

void testCase(long long *attack, long long *cooldown)
{
    int h, n;
    scanf("%d %d", &h, &n);

    for (int i = 0; i < n; i++)
        scanf("%lld", attack + i);
    for (int i = 0; i < n; i++)
        scanf("%lld", cooldown + i);

    long long min = 0, max = 100000000000;
    long long damage;

    while (max - min > 1)
    {
        long long mid = (min + max) / 2;

        damage = 0;
        for (int i = 0; i < n; i++)
        {
            damage += attack[i] * (1 + (mid - 1) / cooldown[i]);
            if (damage >= h)
                damage = h;
        }
        if (damage >= h)
            max = mid;
        else
            min = mid;
    }

    printf("%lld\n", max);

    return;
}

int main()
{
    long long *attack = malloc(200000 * sizeof(long long));
    long long *cooldown = malloc(200000 * sizeof(long long));

    int n;
    scanf("%d", &n);

    for (int i = 0; i < n; i++)
        testCase(attack, cooldown);

    return 0;
}