# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@message = gets.chomp

# Write an answer using puts
# To debug: STDERR.puts "Debug messages..."

answer = ""
char = ""
answer2 = ""

# конвертируем в двоичный код
array = @message.split(//)
for i in 0...array.length
  char = array[i].unpack("B*") #.unpack("B*") распаковывает символ в виде двоичного кода
  char = char.join
  char = char[1...char.length]
  answer = answer + char.to_s
end
# конвертируем из двоичного согласно условия
one = 2
for j in 0...answer.length
  if answer[j] == "1"
    one!=1 ? answer2 += " 0 0" : answer2 += "0";one=1
  elsif answer[j] == "0"
    one == 0 ? answer2 += "0" : answer2 += " 00 0";one=0
  end
end
puts answer2.strip
