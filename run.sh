lex minecraft-wiki.l
yacc -d -v minecraft-wiki.y
gcc y.tab.c lex.yy.c -ly -ll -lm
./a.out