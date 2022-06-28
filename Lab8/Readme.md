# A compiler for cucu language
## How to run
Run 
```
bison -d cucu.y
flex cucu.l
g++ cucu.tab.c lex.yy.c -ll -o cucu
./cucu <FILENAME>
```

## Assumptions
- There is no `elseif`statement
- Only single line comments are allowed
- `> < & | ` these symbols are not defined 