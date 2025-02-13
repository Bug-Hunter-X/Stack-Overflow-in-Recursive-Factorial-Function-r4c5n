# Stack Overflow in Recursive Factorial Function

This repository demonstrates a common error in recursive functions: unbounded recursion leading to a stack overflow.  The `foo` function calculates the factorial of a number using recursion.  However, it lacks proper handling for large input values, causing excessive recursive calls and exceeding the stack limit.

## Bug Description

The `foo` function recursively calls itself without a proper base case to handle large input values of `x`. This results in a stack overflow error when the number of recursive calls exceeds the stack's capacity.

## Solution

The solution involves adding a check to prevent excessive recursion.  This can be achieved through either iterative approaches or by setting a recursion limit, thereby avoiding stack overflow errors.