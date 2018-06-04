=begin

<<codecademy>> https://www.codecademy.com/courses/learn-ruby/lessons/a-night-at-the-movies/exercises/nice-work-1?action=resume_content_item

This was an script to store hash values for movies and their ratings.

The users can choose a number of options to add, update, delete, or display their
movie selections.

=end

movies = {
  'Bruce Almighty' => 3,
  }

puts "What would you like to do? Add, Update, Display, or Delete"
choice = gets.chomp.downcase

case choice
when "add"
	puts "What movie title would you like to add?"
  title = gets.chomp.to_sym
  puts "What rating would you like to give between 0 and 4?"
  rating = gets.chomp.to_i
  if movies[title.to_sym].nil?
   movies = {title => rating}
  else
    puts "That movie already exists!"
  end
when "update"
	puts "Please enter a movie title"
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts "That movie is not in the system"
  else
    puts "Please enter a new rating 0 to 4"
    rating = gets.chomp.to_i
    movies = {title => rating}
  end
when "display"
	movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
	puts "Please enter the title of the movie you would like to delete"
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts "That movie is not in the system"
  else
    movies.delete(title)
    puts "The selection #{title} has been deleted"
  end

else
	puts "Error!"
end
