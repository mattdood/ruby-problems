=begin

<<Codecademy>> https://www.codecademy.com/courses/learn-ruby/lessons/the-refactor-factory/exercises/what-youll-be-fixing?action=resume_content_item

We're going to reinforce our knowledge of Ruby best practices by refactoring some existing code. As mentioned, refactoring is the process by which we improve a code's structure, appearance, and/or performance without modifying its overall behavior.

=end

$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end

  prime_array = [] if prime_array.nil?

  prime = Prime.new
  for num in (1..n)
    prime_array.push(prime.next)
  end
  return prime_array
end

first_n_primes(10)

# Fixed code below #

require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." if n <= 0
  Prime.first n
end

first_n_primes(10)
