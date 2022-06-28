%{
    #include <stdio.h>
    #include <strings.h>
    int lines=0;
    // FILE* outputFile;
%}
%%
(int|char) {printf("TYPE : %s\n",yytext);}
if {printf("IF : %s\n",yytext);}
while {printf("WHILE : %s\n",yytext);}
[a-zA-Z][a-zA-Z0-9_]* {printf("ID : %s\n",yytext);}
[0-9]+ {printf("NUM : %s\n",yytext);}
\( {printf("LEFTPARA : %s\n",yytext);}
\) {printf("RIGTHPARA : %s\n",yytext);}
\{ {printf("LEFTBRACES : %s\n",yytext);}
\} {printf("RIGTHBRACES : %s\n",yytext);}
, {printf("COMMA : %s\n",yytext);}
; {printf("SEMI : %s\n",yytext);}
== {printf("EQUAL : %s\n",yytext);}
!= {printf("NOTEQUAL : %s\n",yytext);}
\+ {printf("PLUS : %s\n",yytext);}
\- {printf("MINUS : %s\n",yytext);}
\* {printf("MUL : %s\n",yytext);}
\/ {printf("DIVIDE : %s\n",yytext);}
= {printf("ASSIGNMENT : %s\n",yytext);}
(.|\n)
%%

int main(int argc,char** argv)
{
    yylex();
    return 0;
}