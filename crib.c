#include <stdio.h>
#include <stdint.h>
#define N 1000000
int main(){
	char probable_primes[N];
	for(int i = 0; i < N; i++) probable_primes[i] = 1;
	for(int i = 2; i < N; i++){
		for(int j = 2; i * j < N; j++){
			probable_primes[i * j] = 0;
		} 
	}
	for(int i = 2; i < N; i++){
		if (probable_primes[i]) printf("%d\n", i);
	}
	return 0;
}
