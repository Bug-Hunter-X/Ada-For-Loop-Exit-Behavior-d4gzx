# Ada For Loop Exit Behavior

This example demonstrates a subtle issue with the `exit` statement in Ada's `for` loops.  When using `exit` to prematurely terminate a loop, the loop counter's final value might not be what's intuitively expected.  The counter's value is updated *after* the `exit` condition is evaluated, leading to potential off-by-one errors or unexpected behavior in subsequent code.

## The Problem

The `bug.ada` file contains a simple Ada program that iterates through an array.  An `exit` statement is used to stop iteration when the value 5 is found. However, due to the loop counter's update mechanism, the loop index `I` may hold a value greater than 5 after the loop finishes.

## The Solution

The `bugSolution.ada` file demonstrates a corrected approach. To reliably obtain the index where the condition was met use a separate variable to track the index and update it only when the condition is met inside the loop.  This provides more predictable behavior and avoids potential errors.