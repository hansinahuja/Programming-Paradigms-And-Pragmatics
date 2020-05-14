%{
int chars, lines, words;
%}

%%
\n          chars++; lines++;
.           chars++;
[^\t\n ]+   words++; chars+=yyleng; 
%%

int main(void) {
 yylex();
 printf("# of chars = %d, # of words = %d, # of lines = %d\n", chars, words, lines);
 return 0;
} 