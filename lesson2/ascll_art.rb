# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
array = []# для хранения айдишников(индексов) букв
rows = [] #результат
answer = ""
@l = gets.to_i
@h = gets.to_i
@t = gets.chomp
@t.upcase!

for i in 0...@t.length
  ('A'..'Z').each_with_index do |letter, id|
    if letter == @t[i]
      array.push(id)
      break
    elsif ("Z" == letter)
      array.push(26)
    end
  end
end
@h.times do
  @row = gets.chomp
  for j in 0...array.length
    a = array[j]*@l
    b = a + @l-1
    answer = answer + @row[a..b]
  end
  rows << answer
  answer = ""
end
puts rows
