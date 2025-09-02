# COBOL Example Application

This repository contains a small set of COBOL programs demonstrating
basic program flow, use of copybooks, program calls, and embedded SQL
statements. The programs are located in `src` and the copybooks in
`copybooks`.

## Programs
- **MAINPGM**: Driver program that initializes a customer record and
  calls other programs.
- **DBPROG**: Simulates database interaction using `EXEC SQL` statements.
- **HELLOPGM**: Displays a greeting, performs a sample SQL `SELECT`, and
  calls `SUBPGM`.
- **SUBPGM**: Simple sub-program receiving and displaying a customer id.

## Copybooks
- **customer.cpy**: Defines the customer record structure used across
  programs.
- **greet.cpy**: Provides a greeting message constant.
- **sqlca.cpy**: Minimal SQL Communications Area with `SQLCODE` and
  `SQLSTATE` fields.

These examples are designed for educational purposes and may require a
COBOL compiler with SQL preprocessor support for successful compilation.
