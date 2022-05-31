## What is  block?
Anonymous functions that are passed into methods.

## How is a block like a method?
They allow you to write code that can be used somewhere else.

## What are the two ways to declre a block
{} for single line and do/end for multiline.

## How do you return data from a block?
just like methods either implicitly or with return

## How can methods collect return data from a block?
store it in a variable or data structure

## What happens if you use a return statement in a block?
just like a method - returns the value and exits

## What does yield do?
move execution from the method into the block

## How do you pass arguments to a block from within a method?
yield(arguments)

## How do you check whether a block was actually passed in?
block_given? - returns true if there is a corrosponding block

## What is a proc?
can store blocks in a variable to pass around and use

## What is a lambda?
a special proc

## What's the difference between a proc and lambda?
lambdas will check and make sure the number of arguments is correct
lambda will return from the block but a proc returns from the context, i.e the level that it was called - it will return from the method where your proc was called and does not run any code after the proc.

## How do you convert a proc to a block?
add & to the proc object

## How do you convert a block to a proc?
add & to the block object