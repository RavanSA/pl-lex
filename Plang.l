%{
#include "hw1.h"
#include <stdio.h>
%}
%%
^[0-9]*[1-9][0-9]*$    {return INTEGER;}
^[-+]?\d*\.?\d*$        {return FLOAT;}
(\'.{0,1}\')                     {return CHAR;}
[\s\S]*                 {return STRING;}

true |
false                 {return BOOLEAN;}
^[a-zA-Z_][a-zA-Z0-9_]*  {return IDENTIFIER}

integer | 
float   |
char    | 
string       {return TYPE;}

"+" | 
"-" | 
"*" |
"/"                     {return OPERATOR;}

"="                     {return EQUAL;}

"if" |
" if then" |
"else" | 
"else if" | 
"end if"               {return CONDITION;}
"for" |
"while" |
"do while" |                  {return LOOP;}
"/*"([^*]|\*+[^*/])*\*+"/"  {return COMMENT;}
"void" |
"static void"           {return METHOD;}
"f(x)"                  {return FUNCTION;}
";"                     {return SEMICOLON;}
"."                     {return DOT;}
"("                     {return OPEN_BRACKET;}
")"                     {return CLOSE_BRACKET;}
"{"                     {return OPEN_CURLY;}
"}"                     {return CLOSE_CURLY;}
%%
int main(int argc,char** argv){
int result;
int run=1;
while(run){
result = yylex();

switch(result){
case INTEGER: printf("INTEGER"); break;
case FLOAT: printf("FLOAT"); break;
case CHAR: printf("CHAR"); break;
case STRING: printf("STRING"); break;
case BOOLEAN: printf("BOOLEAN"); break;
case IDENTIFIER: printf("IDENTIFIER"); break;
case TYPE: printf("DATATYPE"); break;
case OPERATOR: printf("OPERATOR"); break;
case EQUAL: printf("EQUAL"); break;
case CONDITION: printf("CONDITION"); break;
case COMMENT: printf("COMMENT"); break;
case LOOP: printf("LOOP"); break;
case COMMENT: printf("COMMENT"); break;
case METHOD: printf("METHOD"); break;
case FUNCTION: printf("FUNCTION"); break;
case SEMICOLON: printf("SEMICOLON"); break;
case DOT: printf("DOT"); break;
case OPEN_BRACKET: printf("oPEN_BRACKET"); break;
case CLOSE_BRACKET: printf("CLOSE_BRACKET"); break;
case OPEN_CURLY: printf("OPEN CURLY"); break;
case CLOSE_CURLY: printf("CLOSE_CURLY"); break;
}
}
return 0;
}






















