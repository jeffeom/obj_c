#include <stdio.h>
#include <string.h>

int main(){
	char string[9];
	int length;

	printf("Please enter any word that has less than 10 characters\n");
	scanf("%s", &string);
	
	printf("You typed: %s\n", string);

	length = strlen(string);
	printf("Length of your word has %d characters\n", length);	
	
	return 0;
}
