=begin
5. 2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all
of the numbers from 1 to 20?
=end
p (2..20).inject(&:lcm) # lcm - наименшьшее общее кратное для промежутка 2-20
