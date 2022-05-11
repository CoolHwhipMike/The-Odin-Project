test_arr = [4, 3, 78, 2, 0, 2]

def bubble_sort(arr)
  count = 1
  index = 0

  until count == arr.length
    current_element = arr[index]
    next_element = arr[index + 1]

    arr.insert(index + 1, arr.delete_at(index)) if current_element > next_element

    index += 1
    if index == arr.length - count
      index = 0
      count += 1
    end
  end
  puts arr
end

bubble_sort(test_arr)
