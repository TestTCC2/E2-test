#include <stdio.h> 
#include <stdlib.h> 
#include "e2.tab.h"

/* parser */

int yyparse();

void yyerror(char *s, ...)
{
    fprintf(stderr, "%s\n", s); 
}

int main()
{
    printf("> ");
    int result = yyparse(); 
    exit(0);
}
