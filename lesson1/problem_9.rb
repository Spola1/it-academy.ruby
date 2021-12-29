=begin
9. There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end
def find_pyntagorean_triplet(sum)
  for a in (1..sum)
    for b in ((a+1)..sum)
      c = sum - a - b
      break if c <= b
      if a**2 + b**2 == c**2
        return a*b*c
      end
    end
  end
end

p find_pyntagorean_triplet(1000)
