=begin
6. Find the difference between the sum of the squares of the first one hundred
natural numbers and the square of the sum.
=end
def sum_of_square(n)
  n * (n + 1)/2
end

def square_of_sum(n)
  n * (n + 1) * (2*n + 1)/2
end

limit = 100
p sum_of_square(limit) ** 2 - square_of_sum(limit)
