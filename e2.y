%{
#include <stdio.h>
#include <stdlib.h>

/* interface to the lexer */
 
extern int yylineno; /* from lexer */
void yyerror(char *s, ...);
int yylex();
%}

/* declare tokens */ 
%token NUMBER
%token ID
%token ERROR
%token EOL

%start program

%%
program: expr EOL { printf("OK\n"); return 1; }
;

expr
: term
| expr '+' term 
| expr '-' term
;

term
: factor 
| term '*' factor
| term '/' factor
;

factor
: NUMBER
| ID
| '(' expr ')'
;

%%

