=begin

<<The Odin Project>> https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks?ref=lnav

Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).

Now create a similar method called #bubble_sort_by which sorts an array by accepting a block. Remember to use yield inside your method definition to accomplish this. The block will have two arguments that represent the two elements of the array that are currently being compared. The block’s return will be similar to the spaceship operator you learned about before: If the result of the block execution is negative, the element on the left is “smaller” than the element on the right. 0 means both elements are equal. A positive result means the left element is greater. Use the block’s return value to sort your array. Test your method with the example below.

=end

# Bubble Sorter #1

# def bubble_sort(arr)
#   swapped = false
#   (arr.length-1).times do |x|
#     if x - 1 > x
#       arr[i-1], arr[i] = arr[i], arr[i-1]
#       swapped = true
#     end
#   end
# end

def bubble_sort(arr)
  (arr.length-2).times do
    (arr.length-1).times do |x|
      if (arr[x] <=> arr[x+1]) == 1
        arr[x], arr[x+1] = arr[x+1], arr[x]
      end
    end
  end
  arr
end

puts bubble_sort([1, 3, 2])


# Bubble Sorter #2

def bubble_sort_items(arr)
  (arr.length-2).times do
    (arr.length-1).times do |x|
      if (arr[x] <=> arr[x+1]) == 1
        arr[x], arr[x+1] = arr[x+1], arr[x]
      end
    end
  end
  arr
end

puts bubble_sort_items(["hi", "hello", "hey"])
