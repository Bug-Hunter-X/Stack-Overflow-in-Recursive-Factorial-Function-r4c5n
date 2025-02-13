function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x < 0) {
    return 0; // Handle negative input
  } else if (x > 10) { // Add recursion depth limit
    return 0; // Or handle the case appropriately, perhaps raise an exception
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(12);
}

This revised version adds a check for `x` greater than 10.  If it exceeds this limit it returns 0. This limits the recursion depth and prevents the stack overflow.  You could improve it further by choosing a more appropriate way to deal with excessively large x values.  An alternative would be to use an iterative implementation of the factorial function instead of recursion.