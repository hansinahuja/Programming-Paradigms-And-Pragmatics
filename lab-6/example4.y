%{
#include <stdio.h>
#include <string.h>

int yylex(void);
void yyerror(char const *);
int yyparse(void);

void yyerror(const char *str){
    fprintf(stderr, "error: %s\n", str);
}

int yywrap(){
    return 1;
}

int main(){
    yyparse();
}

%}

%token NUMBER TOKHEAT STATE TOKSET TOKTEMPERATURE

%%

commands:
        | commands command
        ;

command:
        heat_switch
        | temperature_set
        ;

heat_switch:
        TOKHEAT STATE
        {
            printf("\tHeat turned on or off\n");
        }
        ;

temperature_set:
        TOKSET TOKTEMPERATURE NUMBER
        {
            printf("\tTemperature set\n");
        }
        ;