Smtlink 3
====================

*Smtlink 3* is a framework for translating ACL2 proof goals to SMT-LIB for external proof. It uses the ACL2 rewriter for verified type inference and term rewriting.

## Requirements

* Z3

The default Smtlink configuration defaults to using whichever z3 binary exists in your path. If you have z3 in a location outside your path, copy *smtlink3-config* to your home directory and modify *smt-cmd* to point to a z3 executable.

## Build Smtlink

This separate repository tracks the Smtlink 3 project.
Setting your *ACL2_HOME* environment variable to your ACL2 sources should allow the targets to build.

### The Makefile has two targets:
- The *top* target builds the Smtlink 3 books. This is the default.
- The *example* target runs the proofs from the paper.

## Loading Smtlink

To import the required books, initialize the needed computed hints, and start the tshell subsystem, execute the following lines in your ACL2 REPL:

```
(include-book "hints/hint-wrapper" :dir :system)
(add-default-hints '((hint-wrapper-hint clause)))
(include-book "<PATH_TO_SMTLINK3_SOURCES>/top")
(add-default-hints '((SMT::SMT-computed-hint clause stable-under-simplificationp)))
(value-triple (tshell-ensure))
```
