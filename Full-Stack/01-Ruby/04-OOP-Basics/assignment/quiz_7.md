## Create a Dog class that is initialized with a name
    class Dog
        def initialize(name)
            @name = name
        end
    end

## Create a new instance of Dog
    my_dog = Dog.new("Buddy")

## Add a method called bark
    class Dog
        def initialize(name)
            @name = name
        end

        def bark()
            'Ruff ruff'
        end
    end

## Call the method
    my_dog.bark()

## What is returned by the provided code.
An error because the speak method is not defined.

## A bunch of the same question that I'm skipping.

## Goes on on modules but asks the same question about what calling a method returns.

## Create a module and use it in a class.
    module MathHelper
        def multiply_by_two(number)
            number * 2
        end
    end

    class Homework
        include MathHelper
    end

    homework = Homework.new()
    homework.multiply_by_two(5)

## Asks about inheritance. Not wat it is or the syntax but demonstrate that it works. So..just type object.method()
Inheritance is when a parent class passes it's methods to a child class. It written as 
    class ChildClass < ParentClass
    end

## These two quizes didn't add much value, in my opinion. I'm just moving on.