STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# w: width of the building.
# h: height of the building.
w, h = gets.split(" ").collect { |x| x.to_i }
n = gets.to_i # maximum number of turns before game over.
x0, y0 = gets.split(" ").collect { |x| x.to_i }

# game loop
X_min = 0
X_max = w - 1
Y_max = h - 1
Y_min = 0

# game loop
loop do
  bomb_dir = gets.chomp # the direction of the bombs from batman's current location (U, UR, R, DR, D, DL, L or UL)

  case bomb_dir
  when "U"
    X_min = X_max = x0
    Y_max = y0 - 1
  when "UR"
    X_min = x0 + 1
    Y_max = y0 - 1
  when "R"
    X_min = x0 + 1
    Y_min = Y_max = y0
  when "DR"
    X_min = x0 + 1
    Y_min = y0 + 1
  when "D"
    X_min = X_max = x0
    Y_min = y0 + 1
  when "DL"
    X_max = x0 - 1
    Y_min = y0 + 1
  when "L"
    X_max = x0 - 1
    Y_min = Y_max = y0
  when "UL"
    X_max = x0 - 1
    Y_max = y0 - 1
  end

  x0 = (X_min + X_max) / 2
  y0 = (Y_min + Y_max) / 2

  puts ("#{x0} #{y0}")
end
