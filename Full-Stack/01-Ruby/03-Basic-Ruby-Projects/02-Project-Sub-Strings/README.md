# Odin Project: Sub Strings

Create a method called *substrings* that takes a string and an array (the dictionary) as arguments. Then count how many times a word from the dictionary appears in the first strings. The appearances can be as a word or part of a word.

## Pseudocode
dictionary = [array, of, words]

def substrings(phrase, dictionary)

split the phrase into an array of words

loop through each word in the phrase
    loop through the dictionary
    check if dictionary word is in part of phrase word (regex?)
    if true then add to a hash dictionary  word(key): count(value)
    
    I need a reduce somewhere to keep count

## Conclusion
I was wrong about reduce. Other than that I think the pseudocode helped alittle but I need to work on the format and details for it to be really useful.