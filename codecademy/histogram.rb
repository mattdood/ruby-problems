=begin

<<codecademy>> https://www.codecademy.com/courses/learn-ruby/lessons/create-a-histogram/exercises/building-the-words-array?action=resume_content_item

This codecademy tutorial walked through the creation of a histogram generator.

This script counts the number of occurrences of each word in a string of text.

=end

puts "Enter a phrase you'd like to analyze: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1 }

frequencies = frequencies.sort_by do |word, count|
  puts word + " " + count.to_s
end
