require_relative 'game'

game = Game.new()

puts "Welcome to Hangman!"
puts "Current word: " + ("_" * game.word.length)

while !game.game_over
    puts "Enter your guess:"
    guess = gets.chomp.downcase
    game.is_game_over?(guess)
end