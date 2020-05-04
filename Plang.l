%{
#include "hw1.h"

%}

%%
^[0-9]*[1-9][0-9]*$                 {return INTEGER;}
^[-+]?[0-9]*\.?[0-9]+$         {return FLOAT;}
(\'.{0,1}\')                     {return CHAR;}
\"([^\\\"]|\\.)*\"                 {return STRING;}

true |
false                   {return BOOLEAN;}
^[a-zA-Z_][a-zA-Z0-9_]  {return IDENTIFIER;}

integer | 
float   |
boolean |
char    | 
string       {return TYPE;}

"\+" | 
"-" | 
"\*" |
"/"                     {return OPERATOR;}

"="                     {return EQUAL;}

if |
ifthen |
else | 
elseif | 
endif                {return CONDITION;}

print          {printf("PRINT");}
scan            {printf("SCAN");}

for |
while |
dowhile |                  {return LOOP;}
"/*"([^*]|\*+[^*/])*\*+"/"  {return COMMENT;}

void |
static            {return METHOD;}

f(x)                  {return FUNCTION;}
";"                     {return SEMICOLON;}
"\."                     {return DOT;}
"\("                     {return OPEN_BRACKET;}
"\)"                     {return CLOSE_BRACKET;}
"\{"                     {return OPEN_CURLY;}
"\}"                     {return CLOSE_CURLY;}

%%

int main(){
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
