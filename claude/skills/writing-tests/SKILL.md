---
name: writing-tests
description: Tests code using best-practices. Use when adding new test files or individual test cases.
---

# Testing code

General purpose rules and convetions that apply when writing and modifying tests.

## Instructions

Rely on a four-phase test approach where each phase is logically grouped together:

1. Setup, where all the required test data is setup.
2. Execute, where the code that should be tested is invoked with the arguments to trigger the expected behavior.
3. Verify, where the output of the tested code is verified through assertions.
4. Teardown, where test data and output effectes are cleaned up.

When testing the output, aim for verifying the generated output over testing for side effects.

### Unit tests

Unit tests focuses on thoroughly testing logic, covering all branches of logic.

### Integration tests

Tests that focuses how components are connected across layers of the application. The focus is on the interaction rather that needing to focus on all possible branches. It does however need to cover that the whole end-to-end flow works, so that a top-level input is reflected all across to the bottom of the stack.

## Additional details

For language specific details, refer to their dedicated sections.

- Java, see [java.md](java.md)
- Ruby, see [ruby.md](ruby.md)

