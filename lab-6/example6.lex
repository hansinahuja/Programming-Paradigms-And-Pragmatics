%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "example6.tab.h"
%}

%%
[0-9]+          yylval = atoi(yytext); return NUMBER;
heat            return TOKHEAT;
on|off          yylval = !strcmp(yytext, "on"); return STATE;
set             return TOKSET;
temperature     return TOKTEMPERATURE;
humidity        return TOKHUMIDITY;
to              return TOKTO;
\n              ;
[ \t]+          ;
%%
