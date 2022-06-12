# frozen_string_literal: true

# This solution is from https://github.com/crespire/ruby_recrusion/blob/main/merge_sort.rb
# I had something similar that did not work. SOmething happened and I lost my work. 
# I'm saving this solution so I can review it and try to compare it to what I had
# in order to see where the difference is.
# If I used [4, 3, 2, 1] my results were:
# [3, 4]
# [1, 2]
# [4, 3, 2, 1]
# Everytime it came back a level I would lose the sorted array I what I had was alsmot the same as below.
# See sort.rb for a new version.

def merge_sort(array)
  len = array.length
  # Base case for a 1 element array. We split until there's 1 element continue.
  if len < 2
    array
  else
    # merge_sort splits the array in half and is called until the array is only 1 element.
    # I split the array into a left and right, then called merge_sort on those, so I think the same as here just in 2 steps rather than 1.
    # This is the only thing that I did differently but I don't understand what's different about it. My sorted array got over written each loop.
    left, right = merge_sort(array.take(len/2)), merge_sort(array.drop(len/2))

    # This steps through each merged array. It pushed the smaller element onto the new array then moves to the next element.
    l, r, i = 0, 0, 0 # Indicies for left, right, index
    while l < left.length && r < right.length do
      if left[l] < right[r]
        array[i] = left[l]
        l += 1
      else
        array[i] = right[r]
        r += 1
      end
      i += 1
    end

    # This handles cases for uneven arrays.
    # Consume remaining digits not used above, only one of these loops should run.
    while l < left.length do
      array[i] = left[l]
      l += 1
      i += 1
    end
    
    while r < right.length do
      array[i] = right[r]
      r += 1
      i += 1
    end
    # Finally, return the array.
    array
  end
end

p merge_sort([2, 3, 1, 4])