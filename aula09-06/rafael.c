#include <stdio.h>
extern int yyparse();
extern FILE *yyin;

// file rafael

char *build_filename;

int main(int argc, char *argv[]) {
	
	if (argv > 1) {
		build_filename = argv[1];
		yyin = fopen(build_filename, "r");
		if(yyin == NULL){
			fprintf(stderr, "Nao consegui abrir o arquivo %s. \n", build_filename);
			exit(1);
			
			}
			
			yyparse();
			if (yyin) {
				//se ele ler o arquivo, faz aqui
				printf("Eu li o arquivo hahaha %s. \n", build_filename);
				fclose(yyin);
			}
			
			
			return 0;
		}else 
			
			return 1;
		
	}