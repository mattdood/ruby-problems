=begin

<<Codecademy prompts>>

This script will output a prompt asking for a string, then replace
all "S" or "s" letters with the sound "th" to mimic Daffy Duck.

=end

print "Please provide a string: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
	user_input.gsub!(/s/, "th")
  puts user_input
else
  puts "We found nothing to replace!"
end
