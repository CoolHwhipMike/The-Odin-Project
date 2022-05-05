## What are the differences between hashes and arrays?
arrays have a numbered index, hashes can take anything as the key

## What are keys and values in a hash?
the key is what a value is associated with i.e. stored under. like index and element in an array

## How can you create a new hash?
with the hash literal name = {}
or with Hash.new

## How can you populate a hash with data?
with hash[key] = value or the above methods

## How can you change existing values within a hash?
with hash[key] = value

## How can you delete existing data from a hash?
hash.delete("key")

## How can you merge two hashes together?
with .merge - hash_a.merge(hash_b)

## Why is it preferred to use symbols as hash keys?
They are more performant and allow for cleaner syntax