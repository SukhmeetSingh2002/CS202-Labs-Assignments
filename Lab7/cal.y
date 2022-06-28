%{
#include <stdio.h>
#include <string.h>
int yywrap();
int yylex();
void yyerror(const char *str)
{
    printf("error:\n");
}


%}

%token INTEGER WRONG

%left '/' '*'
%left '+' '-'

%%
commands:
    command 
    {
        printf("Answer = %d\n",$$);
        return 0;
    }
;

command:
    INTEGER '-' INTEGER {$$=$1 - $3;}
    |
    INTEGER '+' INTEGER {$$=$1 + $3;}
    |
    INTEGER '*' INTEGER {$$=$1 * $3;}
    |
    INTEGER '/' INTEGER {if($3==0) {printf("Division by zero\n"); return 0;}else {$$=$1 / $3;};}
    ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyparse();
}