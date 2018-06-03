=begin

<<codecademy>> https://www.codecademy.com/courses/learn-ruby/lessons/redacted/exercises/what-youll-be-building-2?action=resume_content_item

The codecademy tutorial for a redaction script. This allows the user
to input any amount of text they'd like, then select a word to remove from it.

=end


puts "Please paste text to sift through:"
text = gets.chomp
puts "What word would you like redacted?"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
	if (word == redact)
    print "REDACTED "
  else
    print word + " "
end
end
