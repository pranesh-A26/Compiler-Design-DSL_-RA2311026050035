%{
#include "parser.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[a-zA-Z]+   { return ID; }
"+"         { return PLUS; }
"*"         { return MUL; }
"="         { return ASSIGN; }
";"         { return SEMI; }
[ \t\r\n]+  ;   // ignore spaces and new lines
.           { return yytext[0]; }
%%

int yywrap() { return 1; }