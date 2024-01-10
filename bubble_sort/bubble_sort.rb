#! /usr/bin/env ruby

# TASK:
# Build a method #bubble_sort that takes an array
# and returns a sorted array. It must use
# the bubble sort methodology
def bubble_sort(arr)
  sorted = false
  for i in 0...arr.length
    i = 0
    sorted = true
    for j in 0...arr.length - 1 - i
      if arr[j] > arr[j + 1]
        sorted = false
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
    break if sorted
  end
  arr
end

def assume_arrays_equal(want, got)
  if got != want
    puts "Error:  got #{got}"
    puts "       want #{want}"
  end
end

arr = [2, 2, 9, -1, 3, 2, 324, 22, 15, 33, 7, -4]
want = arr.sort
got = bubble_sort(arr)
assume_arrays_equal(want, got)

arr = [2, 3, 2, 1, 59]
want = arr.sort
got = bubble_sort(arr)
assume_arrays_equal(want, got)










