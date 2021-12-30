# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

class Player
  BEATS = { 'R' => { 'R' => :draw, 'P' => :lose, 'C' => :win, 'L' => :win, 'S' => :lose },
            'P' => { 'R' => :win, 'P' => :draw, 'C' => :lose, 'L' => :lose, 'S' => :win },
            'C' => { 'R' => :lose, 'P' => :win, 'C' => :draw, 'L' => :win, 'S' => :lose },
            'L' => { 'R' => :lose, 'P' => :win, 'C' => :lose, 'L' => :draw, 'S' => :win },
            'S' => { 'R' => :win, 'P' => :lose, 'C' => :win, 'L' => :lose, 'S' => :draw }
          }.freeze #правила

  attr_reader :num, :sign, :competed_nums

  def initialize(num, sign)
    @num = num #номера
    @sign = sign #знаки
    @competed_nums = [] #соревновавшиеся номера
  end

  def compete(other)
    BEATS[sign][other.sign]
  end
end

n = gets.to_i
players = []
n.times do
  numplayer, signplayer = gets.split
  numplayer = numplayer.to_i

  players << Player.new(numplayer, signplayer) # создаем игрока со своим номером и знаком, записываем в массив игроков
end

while players.size > 1 # когда игроков > 1
  winners = [] # определяем массив победителей
  players.each_slice(2) do |left, right| # разбиваем игроков на пары
    winner, loser = case left.compete(right) # определяем победителя
                    when :win then [left, right]
                    when :draw then [left, right].sort_by(&:num)
                    when :lose then [right, left]
                    end

    winner.competed_nums << loser.num #записываем победителя и проигравшего
    winners << winner
  end

  players = winners
end

winner = players.first

puts winner.num #выводим номер победителя
puts winner.competed_nums.join(' ') #выводим номер тех, кого он выиграл
