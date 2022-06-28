%{
    #define YYSTYPE char*
    #include <stdio.h>
    #include "cucu.tab.h"
    // #include <string.h>
    // #include <iostream>
    // #include <string>
    int lines=1;
    // extern int yyval;

    FILE* outputFile;
%}
%%
int                                 {fprintf(yyout,"TYPE : %s\n",yytext);yylval=strdup(yytext);return INT;};
char\ \*                            {fprintf(yyout,"TYPE : %s\n",yytext);yylval=strdup(yytext);return CHAR;};
return                              {fprintf(yyout,"RETURN : %s\n",yytext);yylval=strdup(yytext);return RETURN;};
if                                  {fprintf(yyout,"IF : %s\n",yytext);yylval=strdup(yytext);return IF;};
else                                {fprintf(yyout,"ELSE : %s\n",yytext);yylval=strdup(yytext);return ELSE;};
while                               {fprintf(yyout,"WHILE : %s\n",yytext);yylval=strdup(yytext);return WHILE;};
[a-zA-Z][a-zA-Z0-9_]*               {fprintf(yyout,"ID : %s\n",yytext);yylval=strdup(yytext);return ID;};
[0-9]+                              {fprintf(yyout,"NUM : %s\n",yytext);yylval=strdup(yytext);return NUM;};
\"[^\n]*\"                          {fprintf(yyout,"STRING : %s\n",yytext);yylval=strdup(yytext);return STRING;};
\[                                  {fprintf(yyout,"LEFTPARA : %s\n",yytext);yylval=strdup(yytext);return LEFTSQ;};
\]                                  {fprintf(yyout,"RIGTHPARA : %s\n",yytext);yylval=strdup(yytext);return RIGTHSQ;};
\(                                  {fprintf(yyout,"LEFTPARA : %s\n",yytext);yylval=strdup(yytext);return LEFTPARA;};
\)                                  {fprintf(yyout,"RIGTHPARA : %s\n",yytext);yylval=strdup(yytext);return RIGTHPARA;};
\{                                  {fprintf(yyout,"LEFTBRACES : %s\n",yytext);yylval=strdup(yytext);return LEFTBRACES;};
\}                                  {fprintf(yyout,"RIGTHBRACES : %s\n",yytext);yylval=strdup(yytext);return RIGTHBRACES;};
,                                   {fprintf(yyout,"COMMA : %s\n",yytext);yylval=strdup(yytext);return COMMA;};
;                                   {fprintf(yyout,"SEMI : %s\n",yytext);yylval=strdup(yytext);return SEMI;};
==                                  {fprintf(yyout,"EQUAL : %s\n",yytext);yylval=strdup(yytext);return EQUAL;};
!=                                  {fprintf(yyout,"NOTEQUAL : %s\n",yytext);yylval=strdup(yytext);return NOTEQUAL;};
\+                                  {fprintf(yyout,"PLUS : %s\n",yytext);yylval=strdup(yytext);return PLUS;};
\-                                  {fprintf(yyout,"MINUS : %s\n",yytext);yylval=strdup(yytext);return MINUS;};
\*                                  {fprintf(yyout,"MUL : %s\n",yytext);yylval=strdup(yytext);return MUL;};
\/                                  {fprintf(yyout,"DIVIDE : %s\n",yytext);yylval=strdup(yytext);return DIVIDE;};
=                                   {fprintf(yyout,"ASSIGNMENT : %s\n",yytext);yylval=strdup(yytext);return ASSIGNMENT;};
\/\*[^\n]*\*\/
[ \t]
[\n]                                {lines++;};
(.|\n)                              {fprintf(yyout,"The given literal is not defined : %s.skipping and continuing\n",yytext);};
%%
