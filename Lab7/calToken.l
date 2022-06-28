%{
    #include <stdio.h>
    #include "y.tab.h"
    int lines=0;
    FILE* outputFile;
    extern int yyval;
%}
%%
[0-9]+ {yylval=atoi(yytext);return INTEGER;};
[+\-\*\/] return yytext[0];
%%
