# recursion_examples
Recursion is the process of defining a problem (or the solution to a problem) in terms of (a simpler version of) itself. For example, we can define the operation "find your way home" as: If you are at home, stop moving. Take one step toward home. "find your way home".
In computer science, recursion is a method of solving a problem where the solution depends on solutions to smaller instances of the same problem. Such problems can generally be solved by iteration, but this needs to identify and index the smaller instances at programming time.

## upcase
Created an upcase method using recursion, the gotcha with this method is in the base case. For this praticular problem the we know that string with length of 1 (e.g. "a") should return its upcased version (e.g. "A").

## reverse
Created an reverse method using recursion. Similar to the upcase method the one of the tricky parts in the in the base case, and using a string with length of 1. The other tricky thing about this practicular problem is in the the recursive case, you can do ```reverse(str[1..-1]) + str[0]``` or ```str[0] + reverse(str[0..-2])```

## quick_sort
Quick sort is probably the second most known sorting algorithm. Quick sort is the fastest sorting aglorithm and is implemented in most "sorting" problems. Quick_sort is actually the sorting algorithm #sort uses in Ruby. 