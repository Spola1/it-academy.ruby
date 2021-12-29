STDOUT.sync = true # DO NOT REMOVE
# The while loop represents the game.
# Each iteration represents a turn of the game
# where you are given inputs (the heights of the mountains)
# and where you have to print an output (the index of the mountain to fire on)
# The inputs you are given are automatically updated according to your last actions.

# game loop
loop do
  highest = 0
  index = 0

  8.times do |n|
    mountain_h = gets.to_i
    if mountain_h > highest
      highest = mountain_h
      index = n
    end
  end

  # Write an action using puts
  # To debug: STDERR.puts "Debug messages..."

  puts index # The number of the mountain to fire on.
end

=begin
loop do
    @mountainHeights = Array.new

    8.times do
        @mountainHeights << gets.to_i # represents the height of one mountain, from 9 to 0.
    end

    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."

    puts "#{@mountainHeights.index(@mountainHeights.max)}" # The number of the mountain to fire on.
end
=end
