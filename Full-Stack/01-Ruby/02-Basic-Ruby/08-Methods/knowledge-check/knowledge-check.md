## How would you create your own method?
with def
def method_name (parameters)
    stuff to do
end

## How would you call your new method?
use the name of the method

## How do you pass variables to your method?
Putting them as parameters

## How do you define default parameters for your method?
with (parameter = default_value)

## What is the difference between an explicit return and an implicit return?
Ruby always returns something so just putting code will return that from a method. Typing the word return creates an explicit return that exits the method when it's reached.

## What is the difference between puts and return?
puts prints out whatever you tell it to but it returns nil.

## How do you chain multiple methods together?
with a . - method1.method2.method3

## Give an example of a valid method name and an invalid method name.
my_method ?invalid_method

## What is snake case?
this_is_snake_case

## What are some of Ruby’s reserved words?
begin, end, def, if

## What do you call a method that returns true or false? What is their naming convention?
predicate method - they have a ? i.e. .even?

## What do bang methods do? What is their naming convention?
often end with ! i.e. .upcase! - they overwrite the original variable