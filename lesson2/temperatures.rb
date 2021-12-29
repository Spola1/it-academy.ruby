# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = gets.to_i # the number of temperatures to analys
temps = gets.chomp # the N temperatures expressed as integers ranging from -273 to 5526

if n == 0
  p 0
else
  a = temps.split(" ") #.split записывает все значения температуры в массив
  b=a.map { |x| x.to_i } 
  a.map! { |x| x.to_i.abs }.sort! # сортируем температуры от меньшей к большей(.sort!) перезаписывая исходный массив (.map!)
  p (b.include? a[0]) ? a[0] :(a[0].to_i*-1)
end
