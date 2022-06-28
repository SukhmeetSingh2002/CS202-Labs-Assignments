%{
#define YYSTYPE char*
#include <stdio.h>
#include <string.h>
int yywrap();
int yylex();
FILE* parser;
extern FILE* yyin;
extern FILE* yyout;
extern int lines;
void yyerror(const char *str)
{
    fprintf(parser,"Error in line %d: %s\n",lines,str);
}


%}

%token INT CHAR ID NUM LEFTPARA RIGTHPARA LEFTBRACES RIGTHBRACES COMMA SEMI EQUAL NOTEQUAL PLUS MINUS MUL DIVIDE ASSIGNMENT IF ELSE WHILE RETURN STRING LEFTSQ RIGTHSQ

%left '/' '*'
%left '+' '-'

%%

language:
    program
    {fprintf(parser,"---------\nDone");}
    ;
program:
    |
    variable_delare_global program
    |
    function_delare program
    |
    function_definition program
;

variable_delare_global:
    INT ID SEMI {fprintf(parser,"Global variable: %s, Type: int\n",$2);}
    | 
    INT ID ASSIGNMENT expression SEMI {fprintf(parser,"Global variable: %s, Type: int\n",$2);}
    |
    CHAR ID SEMI {fprintf(parser,"Global variable: %s, Type: int\n",$2);}
    | 
    CHAR ID ASSIGNMENT STRING SEMI {fprintf(parser,"Global variable: %s, Type: char*,string: %s\n",$2,$4);}
    ;
variable_delare:
    INT ID SEMI {fprintf(parser,"Local variable: %s, Type: int\n",$2);}
    | 
    INT ID ASSIGNMENT expression SEMI {fprintf(parser,"Local variable: %s, Type: int\n",$2);}
    |
    CHAR ID SEMI {fprintf(parser,"Local variable: %s, Type: int\n",$2);}
    | 
    CHAR ID ASSIGNMENT STRING SEMI {fprintf(parser,"Local variable: %s, Type: char*,string: %s\n",$2,$4);}
    ;

function_delare:
    INT ID LEFTPARA func_arg_list RIGTHPARA SEMI {fprintf(parser,"\nFunction name %s, Type: int\n",$2);}
    |
    CHAR ID LEFTPARA func_arg_list RIGTHPARA SEMI {fprintf(parser,"\nFunction name %s, Type: char\n",$2);}
    ;

func_arg_list:
    |
    func_arg {fprintf(parser,"\nFunction argument\n");}
    ;
func_arg:
    INT ID  {fprintf(parser,"Name %s, Type: int\n",$2);}
    |
    INT ID COMMA {fprintf(parser,"Name %s, Type: int\n",$2);} func_arg 
    |
    CHAR ID  {fprintf(parser,"Name %s, Type: char\n",$2);}
    |
    CHAR ID COMMA {fprintf(parser,"Name %s, Type: char\n",$2);} func_arg 
    ;

function_definition:
    INT ID LEFTPARA func_arg_list RIGTHPARA LEFTBRACES func_body RIGTHBRACES {fprintf(parser,"\nFunction name %s, Type: int\n",$2);}
    |
    CHAR ID LEFTPARA func_arg_list RIGTHPARA LEFTBRACES func_body RIGTHBRACES {fprintf(parser,"\nFunction name %s, Type: char\n",$2);}
    ;

func_body:
    |
    {fprintf(parser,"\nStatements start:\n \n");} statements
    ;
statements:
    statement
    |
    statement statements
    ;

statement:
    assignment_stmt | func_call_stmt SEMI | return_stmt | if_stmt else_stmt | while_stmt | variable_delare
    ;

assignment_stmt:
    ID ASSIGNMENT expression SEMI {fprintf(parser,"Variable assignment: %s,\n",$1);}
    |
    ID ASSIGNMENT STRING SEMI {fprintf(parser,"Variable assignment: %s, string: %s\n",$1,$3);}
    ;

func_call_stmt:
    ID LEFTPARA func_call_list RIGTHPARA {fprintf(parser,"Function call: %s,\n",$1);}
    ;

func_call_list:
    |
    func_call {fprintf(parser,"\nArguments:\n");}
    ;
func_call:
    boolExpr 
    |
    STRING {fprintf(parser,"string: %s\n",$1);}
    |
    boolExpr COMMA func_call
    |
    STRING COMMA func_call {fprintf(parser,"string: %s,",$1);}
    ;

return_stmt:
    {fprintf(parser,"return statement\n");} RETURN expression SEMI;
    ;

if_stmt:
    {fprintf(parser,"If start\n");} IF LEFTPARA boolExpr RIGTHPARA LEFTBRACES func_body RIGTHBRACES {fprintf(parser,"If end\n");}
    ;



else_stmt:
    |
    {fprintf(parser,"else start\n");}
    ELSE LEFTBRACES func_body RIGTHBRACES 
    {fprintf(parser,"else end\n");}
    ;

while_stmt:
    {fprintf(parser,"\nwhile start\n");}
    WHILE LEFTPARA boolExpr RIGTHPARA LEFTBRACES func_body RIGTHBRACES 
    {fprintf(parser,"while end\n\n");}
    ;
    

expression:
    term PLUS expression {fprintf(parser," + ");}
    |
    term MINUS expression {fprintf(parser," - ");}
    |
    term
    ;
term:
    factor MUL term {fprintf(parser," * ");}
    |
    factor DIVIDE term {fprintf(parser," / ");}
    |
    factor
    ;
factor:
    LEFTPARA boolExpr RIGTHPARA
    |
    ID {fprintf(parser,"const: %s ",$1);}
    |
    NUM {fprintf(parser,"var: %s ",$1);}
    |
    func_call_stmt
    |
    array
    ;

boolExpr:
    expression EQUAL expression {fprintf(parser," == ");}
    |
    expression NOTEQUAL expression {fprintf(parser," != ");}
    |
    expression
    ;

array:
    ID LEFTSQ expression RIGTHSQ
    {fprintf(parser,"array element ,name: %s",$1);}
    ;


%%

int yywrap()
{
    return 1;
}

int main(int argc,char* argv[])
{
    yyin=fopen(argv[1],"r");
    yyout=fopen("output.txt","w");
    parser=fopen("parser.txt","w");
    yyparse();
    fclose(parser);
}