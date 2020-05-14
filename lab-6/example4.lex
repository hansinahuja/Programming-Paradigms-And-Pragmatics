%{
#include <stdio.h>
#include "example4.tab.h"
%}

%%
[0-9]+          return NUMBER;
heat            return TOKHEAT;
on|off          return STATE;
set             return TOKSET;
temperature     return TOKTEMPERATURE;
\n              ;
[ \t]           ;
%%