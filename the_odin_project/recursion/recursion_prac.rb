def append(ary, n)
  return ary if n < 0
  ary << n
  append(ary, n-1)
end

append [], 2 # => [2, 1, 0]

#####

def reverse_append(ary, n)
  return ary if n < 0
  reverse_append(ary, n-1)
  ary << n
  ary
end

reverse_append [], 2 # => [0, 1, 2]

#####

def fib(n)
  return 0 if n == 0
  return 1 if n == 1

  fib(n-1) + fib(n-2)
end

0, 1, 1, 2, 3, 5, 8, 13

fib 0 # => 0
fib 10 # => 55
