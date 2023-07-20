#include <stdio.h>
#include <stdlib.h>

//Function prototypes
void breaking_barriers();
int find_smallest_barrier(int *array_int, int size);
void largest_barrier_first(int *array_int, int size);
int find_largest_barrier(int *array_int, int size);

int main()
{
	breaking_barriers();
	return 0;
}

//Function to start breaking barriers
void breaking_barriers(){
	int array_int[20] = {2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40};
	int size = sizeof(array_int) / sizeof(array_int[0]);
	
	printf("Breaking Barriers ........\n\n");
	
	while(size != 0){
		int smallest_number = find_smallest_barrier(array_int, size);
		printf("Breaking Barrier: %d\n", smallest_number);
		largest_barrier_first(array_int, size);
		size--;
	}
	printf("Assault Completed!\n");
}

//Function to find smallest barrier
int find_smallest_barrier(int *array_int, int size){
	int smallest_number = array_int[0];
	for(int i=1; i<size; i++){
		if(array_int[i] < smallest_number){
			smallest_number = array_int[i];
		}
	}
	return smallest_number;
}

//Function to find largest barrier
int find_largest_barrier(int *array_int, int size){
	int largest_number = array_int[0];
	for(int i=1; i<size; i++){
		if(array_int[i] > largest_number){
			largest_number = array_int[i];
		}
	}
	return largest_number;
}

//Function to move largest barrier to the front
void largest_barrier_first(int *array_int, int size){
	int largest_number = find_largest_barrier(array_int, size);
	for(int i=0; i<size; i++){
		if(array_int[i] == largest_number){
			int temp = array_int[i];
			for(int j=i; j>0; j--){
				array_int[j] = array_int[j-1];
			}
			array_int[0] = temp;
			break;
		}
	}
}