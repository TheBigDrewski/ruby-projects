require_relative 'game'

g = Game.new
p g

puts "Welcome to Mastermind. Each round you will enter 4 color guesses to guess the code."
puts "B = blue, G = green, O = orange, P = purple, R = red, Y = yellow"
puts ". = right color but wrong position | : = right color and right position"
puts "Enter your 1st guess."

until g.game_over == true do
    guess = []
    4.times do
        input = gets.chomp
        guess.push(input)
    end
    print "#{guess}\n"
    print "#{g.code}\n"
    g.is_game_over?(guess)
end