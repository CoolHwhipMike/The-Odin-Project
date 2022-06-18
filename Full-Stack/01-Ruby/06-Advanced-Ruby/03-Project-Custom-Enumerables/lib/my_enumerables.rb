# frozen_string_literal: true

# all methods
module Enumerable
  def my_each_with_index
    index = 0

    while index < length
      yield self[index], index
      index += 1
    end

    self
  end

  def my_select
    index = 0
    selected = []

    while index < length
      selected.push(self[index]) if yield self[index]
      index += 1
    end

    selected
  end

  def my_all?
    index = 0

    while index < length
      return false unless yield self[index]

      index += 1
    end

    true
  end

  def my_any?
    index = 0
    selected = []

    while index < length
      selected.push(self[index]) if yield self[index]
      index += 1
    end

    return true if selected.length.positive?

    false
  end

  def my_none?
    index = 0
    selected = []

    while index < length
      selected.push(self[index]) if yield self[index]
      index += 1
    end

    return true if selected.length.zero?

    false
  end

  def my_count
    index = 0
    selected = []

    if block_given?
      while index < length
        selected.push(self[index]) if yield self[index]
        index += 1
      end
      return selected.length if selected.length.positive?
    end

    length
  end

  def my_map
    index = 0
    result = []

    while index < length
      result << yield(self[index])
      index += 1
    end

    result
  end

  def my_inject(result)
    index = 0
    # result = 0

    while index < length
      result = yield result, self[index]
      index += 1
    end

    result
  end
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
