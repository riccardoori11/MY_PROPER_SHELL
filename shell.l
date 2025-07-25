/*
 *
 *
 * lexical analyzer for our shell
 *
 *
 *
 *
 * */


%{

#include <string.h>
#include "y.tab.h"

  }%

%%

[\t]{

    /*
     * Discard spaces and tabs*/
  }
[^ \t\n][^ \t\n]* {

    yylval.string_val = strdup(yytext);
    return WORD;
  }

\n {

    return NEWLINE;
  }

"]]]"{

    return SIGMA;
  }

':'{
    return PIPE;
  }


