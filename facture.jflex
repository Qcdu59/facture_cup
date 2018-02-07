import java_cup.runtime.*;

%%

%unicode
%cup
%line

FACTURE=FACTURE
DEUX_LETTRES=[A-Z]{2}
TROIS_CHIFFRES=[0-9]{3}
LIBELLE=[:letter:]
CHIFFRE=[:digit:]
VIRG=,
TOTAL=TOTAL
POINT="."
BLANK=[ \t]
%%

{FACTURE}	{return new Symbol(sym.FACT);}
{TOTAL}	{return new Symbol(sym.TOT);}
{DEUX_LETTRES}{TROIS_CHIFFRES}$	{return new Symbol(sym.NO,yytext());}
{LIBELLE}+	{return new Symbol(sym.LIB,yytext());}
{CHIFFRE}+	{return new Symbol(sym.NUM,new Integer(yytext()));}
{VIRG}	{return new Symbol(sym.VIRG);}
{POINT}	{return new Symbol(sym.PT);}
"\n"	{;}
{BLANK}	{;}
.	{;}