# frozen_string_literal: true

# all methods
module Enumerable
  # Your code goes here
end

# array class
class Array
  def my_each
    index = 0

    while index < length
      yield self[index]
      index += 1
    end

    self
  end
end
