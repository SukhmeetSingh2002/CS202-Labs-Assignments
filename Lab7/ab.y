%{
#include <stdio.h>
#include <string.h>
int yywrap();
int yylex();
void yyerror(const char *str)
{
    printf("Not Valid\n");
}


%}

%token A B A10 WRONG

%%
commands:
    command 
    {
        printf("Valid\n");
        return 0;
    }
;

command:
    A10 extra B
    ;
extra:
    |
    extra A
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