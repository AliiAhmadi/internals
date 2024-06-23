#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/time.h>

#define N 200000

int cmp_(const void *a, const void *b)
{
    const int *aa = *(const int **)a;
    const int *bb = *(const int **)b;
    return aa[1] - bb[1];
}

void sort(int **aa, int k)
{
    srand(time(NULL));
    int x, y, z = rand();
    int *temp;

    for (x = 0; x < 2; x++)
    {
        for (y = 0; y < k; y++)
        {
            z *= rand();
            int u = ((z % k) + k) % k;
            u = (((aa[u][0] + z) % k) + k) % k;
            temp = aa[u];
            aa[u] = aa[y];
            aa[y] = temp;
        }
    }

    qsort(aa, k, sizeof(int *), cmp_);
}

void solve()
{
    int x, t, h, n;
    long long p, q, l, r, m;

    scanf("%d", &t);
    while (t--)
    {
        scanf("%d %d", &h, &n);
        int **aa = (int **)malloc(n * sizeof(int *));
        q = 0;

        for (x = 0; x < n; x++)
        {
            aa[x] = (int *)malloc(2 * sizeof(int));
            scanf("%d", &aa[x][0]);
            q += aa[x][0];
        }

        for (x = 0; x < n; x++)
        {
            scanf("%d", &aa[x][1]);
        }

        sort(aa, n);

        p = 1;
        if (q >= 1ll * h)
        {
            puts("1");
        }
        else
        {
            l = 1, r = 4e10 + 1;
            while (l < r)
            {
                m = (l + r) / 2;
                p = q;
                for (x = 0; x < n; x++)
                {
                    p += (m - 1) / aa[x][1] * 1ll * aa[x][0];
                }
                if (p >= 1ll * h)
                    r = m;
                else
                    l = m + 1;
            }

            printf("%lld\n", l);
        }

        for (x = 0; x < n; x++)
        {
            free(aa[x]);
        }
        free(aa);
    }
}

int main()
{
    solve();
    return 0;
}