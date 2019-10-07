/*
* <Description of this C program>
*
* <Ante Skoric and Timo Quednau> # <07.10.2019>
*
*/

#include <stdio.h>
#include <string.h>

int main () {
	/*
	 * echo $UID
	 * whoami
	 */

	char input[31];
	char path[200] = {"C:/Users/agrok/Desktop/Uni Praktika/Semester 3/BSP/Aufgabe01/"};
	FILE *file;
	char user[100];
	char userid[100];

	printf("Enter the file name");
	fgets(input, 31, stdin);
	printf(input);
	/*
	 * TODO Get user and userid from the linux terminal
	 */

	file = fopen(strcat(strcat(path,input),".txt"), "w");
	if (file == NULL) {
        perror("Error ocured in opening the file");
    }
    else{
		fprintf(file, strcpy(user,userid));
        fclose(file);
        printf("Successful input into the file");
    }

	return 0;
}
