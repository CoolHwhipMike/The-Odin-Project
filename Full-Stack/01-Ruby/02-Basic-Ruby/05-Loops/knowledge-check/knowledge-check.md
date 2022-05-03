## What is a loop and why it is useful?
It repeats code until a condition is met.

## What is a loop loop, and how would you use it?
A general loop that should be avoided.
```
iterator = 0
loop do
    stuff
    break if (condition)
end
```

## What is a while loop, and how would you use it?
It loops while a condition is true.
```
iterator = 0
    while iterator < 10 do
    stuff to do
    iterator += 1
end
```
## What is a for loop, and how would you use it?
Loops while counting through something
```
arr = [1, 2, 3, 4]
for i in arr
    do stuff
end
```
## What is a #times loop, and how would you use it?
loops for a number of times
```
10.times do
    stuff
end
```

## What is an until loop, and how would you use it?
Like a while loop but goes while a condition is false
```
i = 10
until i > 10 do
    stuff
    i += 1
end
```

## What are the #upto and #downto loops, and how would you use them?
loops upto a number or downto a number
```
1.upto(10) do
    stuff
end

10.downto(5) do
    stuff
end
```