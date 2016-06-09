%{
#include <stdio.h

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

void yyerror(const char *s)
{
	fprintf(stderr, "%s:%d: error: %s %s\n", 
		build_filename, yylineno, s, yytext);
	exit(1);
}

extern "C" int yywrap() {
	return 1;
}
