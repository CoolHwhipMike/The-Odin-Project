## What is the value of x?
    x = String.new("i wich i was surfing")
It's the qouted part. x is an instance of the String class.

## Make the following object "I'm an object"
    String.new("I'm an object")

## what is returned by
    "hi".methods()
It returns the methods available to strings.

## What does this return?
    "hello".upcase()
It calls the upcase string method - HELLO

## What does this return?
    "sUp DuDe".swapcase()
SuP dUde

## What does String.split() return?
Returns an array that splits on the words (by default) in the string.

## How to call methods on string object?
your_string.method_name()

## Create a string object that says "road trip"
    x = "road trip"
    x = String.new("road trip")
Can use " or ' in this case.

## What is returned by
    Array.new()
A new empty array. - []

## What does this print?
    my_array = Array.new()
    my_array.push("nice")
    my_array.push("hair")
    puts my_array.inspect
["nice", "hair"]

## What is a class?
A thing thing that makes objects

## What is an object?
An instance of a class

## How is a String object created?
With class.new(object) or string literal syntax
    String.new("hi")
    "hi"

## Create a new hash object
    Hash.new()

## Create an array and then add to it.
    arr = Array.new()
    arr.push("one")
    arr.unshift("two")

## What is the result of 
    my_string = String.new("special")
    my_string.push("cool")
~~specialcool~~ It raises an error. push is for arrays not strings.

## What is the result of
    a_string = String.new("ear")
    a_string.class()
String

## What is the result of
    an_array = Array.new()
    an_array.class()
Array

## Create and instance of Animal assigned to fido
    class Animal
    end

    fido = Animal.new()

## Create an instance called spot the call the speak method
    class Dog
        def speak()
            return ("ruff ruff")
        end
    end

    spot = Dog.new()
    puts spot.speak()

## Define a Penguin class with a looks method
    class Penguin
        def looks()
            "We are cute!"
        end
    end

## Another question about calling a method (skiped)

## Define a calculator class with an add method
    class Calculator
        def self.add(num1, num2)
            num1 + num2
        end
    end

    puts Calculator.add(1 + 2)

## Show the parts
    1. class Person
    2.   def initialize(name)
    3.    @name = name
    4.   end
    5. end

1. Says we are making a class called Person
2. defines the initialize method that take a name parameter that is run when we call Person.new("name")
3. set the instance variable @name equal to the name argument passed in
4. closes the initialize method block
5. closes the class block

## I answered this in the above question

## how does return_lions_name() work?
This creates an instance of the Lion class (an object) and assigns it to the variable simba
    simba = Lion.new("Simba")
"Simba" is then stored in that instance's @name variable taht is specific to that instance. It also has access to the instance methods written in the class definition
    puts simba.return_lions_name()
This executes the instance method with returns that instance's @name ("Simba"). puts then writes to stdout

## Create a celsius class that is initialized with temperature
    class Celsius
        def initialize(temp)
            @temp = temp
        end
    end

## add a method to_fahrenheit()
    class Celsius
        def initialize(temp)
            @temp = temp
        end

        def to_fahrenheit()
            (@temp * 1.8) + 32
        end
    end