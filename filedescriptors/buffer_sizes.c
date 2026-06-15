#include <stdio.h>
#include <string.h>
void size_of_buffer_as_pointer(){
	char* asPointer = "Hello";
	printf("Size of pointer is %lu\n", sizeof(asPointer));
	printf("Strlen of pointer is %lu\n", strlen(asPointer));
}

void size_of_buffer_as_table(){
	char asPointer[] = "Hello";
	printf("Size of table is %lu\n", sizeof(asPointer));
	printf("Strlen of table is %lu\n", strlen(asPointer));
}

int main() { 
	printf("Use pointer declaration (size of will show size of pointer not string)\n");
	 size_of_buffer_as_pointer();
	printf("Use table declaration (size of will show size of string with null byte, strlen without)\n");
	 size_of_buffer_as_table();

	return 0; 
}
