=begin

<<Codecademy>> https://www.codecademy.com/courses/learn-ruby/lessons/the-zen-of-ruby/exercises/the-right-tool-for-the-job?action=resume_content_item

Simple script to return even numbers of array. Keeping this
to provide an example of a one line if statement within a do-loop.

=end

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |x| puts x if x % 2 == 0}
