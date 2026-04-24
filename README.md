# Compiler Design DSL Project

## 📌 Project Overview

This project demonstrates the implementation of a **basic compiler pipeline** for a simple Domain-Specific Language (DSL) using **Lex (Flex)** and **YACC (Bison)**. The compiler processes arithmetic expressions and assignment statements, validating their syntax and structure.

The main goal of this project is to understand how different phases of a compiler—especially **lexical analysis and syntax analysis**—work together to process input code.

---

## ⚙️ Features

* Tokenization of input using **Lexical Analysis (Flex)**
* Syntax validation using **Parsing (Bison/YACC)**
* Support for:

  * Identifiers (variables)
  * Numeric constants
  * Arithmetic operators (+, *)
  * Assignment statements
* Error detection for invalid syntax
* Clean and modular project structure

---

## 🛠️ Tools & Technologies Used

* **Flex (Lex)** – for lexical analysis
* **Bison (YACC)** – for syntax analysis
* **GCC Compiler** – for compiling generated C code
* **Windows PowerShell** – for execution
* **Notepad / VS Code** – for editing source files

---

## 📁 Project Structure

```
Compiler-Design-DSL/
│
├── src/            # Source files
│   ├── lexer.l     # Lexical analyzer
│   ├── parser.y    # Parser (grammar rules)
│
├── test/           # Input test cases
│   └── input.txt
│
├── output/         # Execution results
│   └── output.png
│
├── docs/           # Documentation (Report PDF)
│
└── README.md       # Project documentation
```

---

## 🚀 How to Run the Project

### Step 1: Navigate to source folder

```
cd src
```

### Step 2: Generate lexical analyzer

```
win_flex lexer.l
```

### Step 3: Generate parser

```
win_bison -d parser.y
```

### Step 4: Compile the program

```
gcc lex.yy.c parser.tab.c -o compiler.exe
```

### Step 5: Execute the compiler

```
Get-Content ..\test\input.txt | .\compiler.exe
```

---

## 📥 Sample Input

```
a = 5 + 3;
```

---

## 📤 Sample Output

```
Valid Statement
```

---

## 🔍 Working Explanation

1. The input is read from a file.
2. The **lexical analyzer** breaks the input into tokens.
3. The **parser** checks whether the sequence of tokens follows defined grammar rules.
4. If valid, the compiler prints:

   ```
   Valid Statement
   ```

   Otherwise, it reports a syntax error.

---

## 📚 Learning Outcomes

* Understanding of **compiler design basics**
* Hands-on experience with **Flex and Bison**
* Knowledge of how tokens and grammar rules interact
* Practical exposure to parsing and syntax validation

---

## 🧾 Conclusion

This project successfully demonstrates the working of a simple compiler using Flex and Bison. It highlights the importance of lexical and syntax analysis in validating programming constructs and provides a strong foundation for building more advanced compiler components like **semantic analysis and code generation**.

---

## 👨‍💻 Author Details

* **Name:** A.Pranesh
* **Register Number:** RA2311026050035

---



