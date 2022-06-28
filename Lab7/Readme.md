# How to Run

- count.l: Run the following commands and give the `filename` as argument
```
lex count.l
cc lex.yy.c -o count -ll 
./count <FILENAME>
```

- Comments.l: Run the following commands and give the `input and output filename` as argument
```
lex Comments.l
cc lex.yy.c -o Comments -ll 
./Comments <INPUT_FILENAME> <OUTPUT_FILENAME>
```

- ab.y: Run the following commands and enter the string then press `enter` and then `ctrl+D`
```
lex ab.l
yacc -d ab.y
cc lex.yy.c y.tab.c -o ab
./ab
```

- cal.l: Run the following commands and enter the string then press `enter` and then `ctrl+D`
```
lex cal.l
cc lex.yy.c -o cal -ll
./cal
```

- cal.y: Run the following commands and enter the string then press `enter` and then `ctrl+D`
```
lex calToken.l
yacc -d cal.y
cc lex.yy.c y.tab.c -o calculator
./calculator
```
# Assumptions


## Comments.l
- A comment can have `*` or `/` in between the multiline comment
## cal.l
- Only `+-*/` are allowed as operators.
- Variables can also be present as operators
- Brackets are not recognised.
## cal.y
- Only `+-*/` are allowed as operators.
- Variables can also be present as operators