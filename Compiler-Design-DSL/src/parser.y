%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);
void yyerror(const char *s);
%}

%token NUMBER ID PLUS MUL ASSIGN SEMI

%%

program: stmt
;

stmt: ID ASSIGN expr SEMI { printf("Valid Statement\n"); }
;

expr: expr PLUS term
    | term
;

term: term MUL factor
    | factor
;

factor: NUMBER
      | ID
;

%%

int main() {
    return yyparse();
}

void yyerror(const char *s) {
    printf("Syntax Error: %s\n", s);
}