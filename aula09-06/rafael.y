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