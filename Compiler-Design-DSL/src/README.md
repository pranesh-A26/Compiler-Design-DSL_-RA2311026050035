\# Compiler Design DSL



\## Project Description

This project implements a simple compiler pipeline using Lex and YACC. It processes a basic domain-specific language (DSL) for arithmetic expressions and assignment statements.



\## Features

\- Lexical Analysis using Flex

\- Syntax Analysis using Bison

\- Basic parsing of expressions and assignments

\- Error handling for invalid syntax



\## Tools Used

\- Flex (Lex)

\- Bison (YACC)

\- GCC Compiler

\- Windows PowerShell



\## Folder Structure

\- src/ → Source code files (lexer.l, parser.y)

\- test/ → Input test cases

\- output/ → Execution screenshot

\- docs/ → Report document

\- README.md → Project documentation



\## Steps to Run

1\. Navigate to src folder:

&#x20;  cd src



2\. Generate lexer:

&#x20;  win\_flex lexer.l



3\. Generate parser:

&#x20;  win\_bison -d parser.y



4\. Compile:

&#x20;  gcc lex.yy.c parser.tab.c -o compiler.exe



5\. Run:

&#x20;  Get-Content ..\\test\\input.txt | .\\compiler.exe



\## Sample Input

a = 5 + 3;



\## Sample Output

Valid Statement



\## Team Details

Name: A.PRANESH

Reg No: RA2311026050035

