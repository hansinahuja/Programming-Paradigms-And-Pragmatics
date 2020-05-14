%{
#include <stdio.h>
%}

%%
[0-9]   printf("NUMBER\n");
[a-zA-Z_][a-zA-Z0-9_]*    printf("WORD\n");
%%