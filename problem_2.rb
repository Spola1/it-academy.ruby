=begin
2. Each new term in the Fibonacci sequence is generated by adding the previous
two terms. By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose values do not exceed
four million, find the sum of the even-valued terms.
=end
fib = [1,1]

while (sum = fib.last(2).sum) <= 4000000
  fib << sum
end

p fib.select{ |i| i[0].zero? }.sum