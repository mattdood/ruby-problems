=begin

<<codecademy>> https://www.codecademy.com/courses/learn-ruby/lessons/ordering-your-library/exercises/defining-our-method?action=resume_content_item

This tutorial created an alphabetizer for both A-Z and Z-A,
with a user string input.

=end

def alphabetize(arr, rev=false)
  arr.sort!
  if (rev == true)
    return arr.reverse!
  else
    return arr
  end
end

numbers = [1, 2, 4, 3]

puts alphabetize(numbers, false)
