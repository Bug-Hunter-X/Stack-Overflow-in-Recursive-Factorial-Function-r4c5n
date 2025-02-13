function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error for large values of x because the recursive calls to foo() do not have a base case that terminates the recursion for larger values of x.
The program may appear to work for small values of x.  However, as x increases the number of recursive calls grows factorially. This will eventually exhaust the available stack space causing a stack overflow error.
This may result in the program crashing or exiting unexpectedly.