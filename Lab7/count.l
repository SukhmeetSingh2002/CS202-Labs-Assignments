%{
int ch=0,words=0,spaces=0,lines=1;
%}
%%
\n {lines++;ch++;}
[^ (\t|\n)]+ {words++;ch += yyleng;}
[ ] spaces++,ch++;
. ch++;
%%

int main(int argc,char** argv)
{
    if(argc<2)
    {
        printf("Provide name of the file\n");
        return 1;
    }
    yyin = fopen(argv[1],"r");
    yylex();
    printf("ch: %d words: %d spaces: %d lines: %d\n",ch,words,spaces,lines);
    fclose(yyin);
    return 0;
}