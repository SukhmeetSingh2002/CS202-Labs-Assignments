%{
    #include <stdio.h>
    #include "y.tab.h"
    int lines=0;
    FILE* outputFile;
    extern int yyval;
%}
%%
^a{10} return A10;
a return A;
b$ return B;
(.|\n) return WRONG;
%%
