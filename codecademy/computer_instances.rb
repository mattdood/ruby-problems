=begin

<<Codecademy>> https://www.codecademy.com/courses/learn-ruby/lessons/virtual-computer/exercises/you-did-it-1?action=resume_content_item

Creation of a virtual computer instances generator

The generator takes two parameters, then illustrates
time stamping by user input

=end

class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created at #{time} by #{@username}. "
  end

  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("Matthew", "Dood")
