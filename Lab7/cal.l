%{
    #include <stdio.h>
    #include <strings.h>
    int lines=0;
    FILE* outputFile;
    extern int yyval;
    char a[1000][100];
    char b[1000];
    int aa=0;
    int bb=0;
    int Valid=1;
    int identifiers=0;
    int operators=0;
%}
%%
[0-9a-zA-Z]+ {strcpy(a[aa++],yytext);identifiers++;}
[+\*\-\/] {b[bb++]=yytext[0];operators++;if(operators>identifiers)Valid=0;}
%%

int main(int argc,char** argv)
{
    yylex();
    if(Valid==1 && identifiers>operators)
    {
        printf("The identifiers are:\n");
        for(int i=0;i<aa;i++)
        {
            printf("%s\n",a[i]);
        }
        printf("The operators are:\n");
        for(int i=0;i<bb;i++)
        {
            printf("%c\n",b[i]);
        }
    }
    else
    {
        printf("Not Valid\n");
    }
    return 0;
}