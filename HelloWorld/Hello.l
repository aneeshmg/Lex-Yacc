/**
 * A lex intro program to scan 'hello' and count number of times it was input
*/

%{
int i = 0;
%}

%%
hello  { printf("%s\n",yytext);i++; }
.|\n  ;//Do nothing ie ignore other inputs
%%

int main() {
  printf("Enter something\n");
  yylex();
  printf("%d\n",i);
}

int yywrap() {
  return 1;
}
