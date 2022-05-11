# Odin Project - Bubble Sort

## Background
Bubble sort is a sorting algorithm that compares adjacent elements as it iterates through an array. If the left element is less than the right element they are swapped. This causes larger values to "bubble" to the right of the array.

## Pseudocode
FOR EACH item in an array
    Compare the _currentItem_ to the _nextItem_
    IF the _currentItem_ is greater than the _nextItem_
        swap their positions
    After each pass, the distance travelled can be decremented by 1
    IF there are no swaps
        the array is sorted