%{
int lines=0;
FILE* outputFile;
%}
%%
\/\*[^\*\/]*\*\/ {lines++;}
\/\/(.)* {lines++;}
(.|\n) {fprintf(outputFile,"%c",yytext[0]);}
%%

int main(int argc,char** argv)
{
    if(argc<=2)
    {
        printf("Provide name of the file\n");
        return 1;
    }
    outputFile=fopen(argv[2],"w");
    yyin = fopen(argv[1],"r");
    yylex();
    printf("\nlines: %d \n",lines);
    fclose(yyin);
    fclose(outputFile);
    return 0;
}