=begin
3. The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
=end
require 'prime'

num = 600851475143
divisions = num.prime_division
p divisions.max_by{|el| el[0]}
