%{
#include <stdio.h>
#include <stdlib.h>

%}

%token TOK_IDENT TOK_FLOAT

%start programa

%%

programa : stmts    { }
		 ;

stmts : stmts stmt			{  }
	  | stmt				{  }
	  ;
	  
	  
stmt : TOK_IDENT
	  | '('
	  | ')'
	  | '{'
	  | '}'
	  | TOK_FLOAT
	  ;
	  
	  
%%


extern int yylineno;
extern char *yytext;
extern char *build_filename;

int yyerror(char *s)
{
	fprintf(stderr, "%s:%d: error: %s %s\n", 
		build_filename, yylineno, s, yytext);
	exit(1);
}

int yywrap() {
	return 1;
}
