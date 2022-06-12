# frozen_string_literal: true

# The only change I made was to add the elements back into arr rather than add them to a new array. Something was overridding the sorted array
# because the sort would only work for 2 or 3 length arrys. I don't understand the reason for this and may look into it again later.

def merge_sort(arr)
  left_arr = arr.slice(0...(arr.length / 2))
  right_arr = arr.slice((arr.length / 2)..-1)

  merge_sort(left_arr) unless left_arr.length == 1
  merge_sort(right_arr) unless right_arr.length == 1

  left_index = 0
  right_index = 0
  merged_index = 0

  while left_index < left_arr.length && right_index < right_arr.length
    if left_arr[left_index] < right_arr[right_index]
      arr[merged_index] = left_arr[left_index]
      left_index += 1
    else
      arr[merged_index] = right_arr[right_index]
      right_index += 1
    end
    merged_index += 1
  end

  while left_index < left_arr.length
    arr[merged_index] = left_arr[left_index]
    left_index += 1
    merged_index += 1
  end

  while right_index < right_arr.length
    arr[merged_index] = right_arr[right_index]
    right_index += 1
    merged_index += 1
  end

  arr
end

p merge_sort([1, 2, 3])
p merge_sort([4, 1, 6, 4, 7, 8, 2, 9, 3, 2])
p merge_sort([1, 2, 5, 6, 9])
