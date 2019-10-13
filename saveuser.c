/*
* <Description of this C program>
*
* <Ante Skoric and Timo Quednau> # <07.10.2019>
*
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

int main () {

	char input[31];
	FILE *file;

	printf("Enter the file name: ");
	fgets(input, 31, stdin);
	
	file = fopen(input, "w");
	
	if (file == NULL) {
        perror("Error ocured in opening the file");
    }else{
        fprintf(file, "%s", getlogin());
        fprintf(file, " %d", getuid());
        fclose(file);
        printf("Successful input into the file");
    }
	
	return 0;
}
