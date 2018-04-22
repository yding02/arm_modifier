#include <stdio.h>

int is_prime(int i) {
	int j;
	for (j = 2; j * j <= i; j++) {
		if (i % j == 0) {
			return 0;
		}
	}
	return 1;
}

int main(void) {
	int i;
	int p = 0xFFFFFFFF;
	int q = 0;
	for (i = 2; i < 100; i++) {
		i = i & p;
		i = i ^ q;
		if (is_prime(i)) {
			printf("%i \n", i);
		}
	}
}
