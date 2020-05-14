%{
#include <stdio.h>
#include <stdlib.h>
%}

DIGIT   [0-9]
ID      [a-zA-Z][a-zA-Z0-9]*

%%

{DIGIT}+ {
    printf("INTEGER: %s (%d)\n", yytext, atoi(yytext));
}

{DIGIT}+"."+{DIGIT}* {
    printf("INTEGER: %s (%g)\n", yytext, atof(yytext));
}

class|int|double|public|private {
    printf("KEYWORD: %s\n", yytext);
}

{ID} printf("IDENTIFIER: %s\n", yytext);

":"|"{"|"}"|"("|")"|";"|"," printf("PUNCTUATION: %s\n", yytext);

"=" printf("OPERATOR: %s\n", yytext);

[ \t\n]+ ;

. printf("Unrecognized character: %s\n", yytext);

%%