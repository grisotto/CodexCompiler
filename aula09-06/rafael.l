%{

#include <stdio.h>
#include "rafael.tab.h"


%}

%option yylineno

%%

[ \t\n\r]				{ /* espaçoos */ }

[a-zA-Z_][a-zA-Z0-9_]*	{ return(TOK_IDENT); }
 
"("						{ return('('); }
")"						{ return(')'); }
"{"						{ return('{'); }
"}"						{ return('}'); }

-?[0-9]+\.[0-9]+ 	{ return(TOK_FLOAT); }

%%