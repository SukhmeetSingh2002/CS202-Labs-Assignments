# How to Run
- Truck.pl : Run the following command and enter the string on the console.

```
perl Truck.pl
```
- Gene.pl : Run the following command and enter the string on the console.

```
perl Gene.pl
```
- Token.pl : give the name of the file for text and enter thr delimiter on the console.

```
perl Token.pl <FILENAME>
```

# Asumptions
## Truck.pl 
- After a word ends or starts any charater which matches `\W` can come.
- It is case sensitive
> `red, red: red;,[red,:red,"red` will match the regex. Since after `d`(in red) any characeter can come to mark the end of the word. 
## Token.pl 
- The delimiter can only be of one character.
- It is case sensitive
- If there are two or more delimiters it will be replaced by one.
> `Hello how are l you` in this string if `l` is the delimiter then string will become `Helo how are l you` and then each `l` will be replaced by `\n`.
- If a line starts with a delimiter then it will be replced by ``(empty string).
## Gene.pl 
- It is case sensitive