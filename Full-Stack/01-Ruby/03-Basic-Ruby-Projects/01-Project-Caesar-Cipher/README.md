# The Odin Project: Caesar Cipher

## Background
A Caesar Cipher takes a phrase and shifts the letters by a number called a Caesar shift. For example, the string *abc* with a shift of *2* would become *cde*.

## Goals
- [x] Take user input for a phrase and shift value
- [x] Apply the shift corectly
    - [x] Wrap from z to a or Z to A
    - [x] Maintain case
    - [x] Maintain punctuation
- [x] Display the shifted phrase

# Pseudocode
get *user_string*
get *user_shift*

convert *user_string* to ASCII array as *user_string_array*
convert *user_shift* to a number

loop through *user_string_array*
    if the element is uppercase ASCII (between 65 and 90 inclusive)
        add *User_shift* to element
        if element is above 90
            element = 65 + (element - 91)
        end
    end
    if the element is lowercase ASCII (between 97 and 122 inclusive)
        add *User_shift* to element
        if element is above 122
            element = 97 + (element - 123)
        end
    end
    push element onto *shifted_string_array*
end

convert *shifted_string_array* to a string as *shifted_string*
print *shifted_string*