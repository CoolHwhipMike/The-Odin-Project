## What is a nested array? What data is useful to store in a nested array?
An array that contains arrays. Grouping related or positional data.

## What is a nested hash? What data is useful to store in a nested hash?
A hash that contains hashes. Useful for complex associated data.

## How do you access data in a nested array?
Chain brackets. Array[index_1][index_2]

## How do you access data in a nested array?
Chain brackets. Hash[index_1][index_2]

## What is #gid useful?
If trying to access a nonexistant element it returns nil rather than an error.

## How do you add elements to a nested array?
Like normal, use << or #push - array[index].push(thing_to_add)

## How do you add data to a nested hash?
Like normal - hash[:key] = {key1: value1, key2: value2}

## How do you delete elements from a nested array?
Like normal using pop or shift

## How do you delete data from a nested hash?
Like normal using delete.

## How do you create a nested array that is not mutable?
using a code block
This creates a 5 element array and runs the code blck for ech element. That nests a 2 element array in each.
array.new(5) {array.new(2)}
This looks the same but each element points to the same object
array.new(5, array.new(2))

## How do you iterate over a nested array?
With nested loops.

## How do you iterate over a nested hash?
With nested loops.