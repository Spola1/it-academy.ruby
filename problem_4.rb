=begin
4. A palindromic number reads the same both ways. The largest palindrome made
from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
=end
palindromes=[]
for i in 100..999 do
  for j in 100..999 do
    k=i*j
    palindromes << k if k.to_s==k.to_s.reverse
  end
end

p palindromes.max
