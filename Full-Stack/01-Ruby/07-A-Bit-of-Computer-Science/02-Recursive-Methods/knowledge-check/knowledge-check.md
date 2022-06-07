## How would you briefly define a recursive function?
A function that calls itself as part of its definition i.e. one of the steps is to call itself.

## What is the point of recursion? Is it more efficient than using a plain loop?
It divides the work into smaller cases to accomplish a task. It can be easier to impliment and understand that a loop but can also be less efficient.

## What are the 2 essential parts in a recursive function?
The base case - what exits the function
The recursive case - what breaks down the problem and keeps calling the function

## Why is “stack overflow” relevant to a recursive problem?
Recursion can cause and infinite loop which continus to call the function and add it to the stack. Eventuall the computer will run out of memory and overflow from the stack.