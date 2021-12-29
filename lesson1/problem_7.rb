=begin
7. By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
that the 6th prime is 13.
What is the 10 001st prime number?
=end
def primes(n)
  primes = [2]
  i = 3
  until primes.length >= n
    primes << i unless primes.any? { |p| i % p == 0 }
    i += 2
  end
  primes
end
 p primes(10001).last
