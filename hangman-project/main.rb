require_relative 'game'

puts "Welcome to Hangman!"
puts "Would you like to load a saved game or start a new game? (load/new)"
choice = gets.chomp.downcase
game = nil

if choice == "load"
    if Dir.exist?("save-files")
        puts "Available save files:"
        puts Dir.children("save-files").inspect
        puts "Enter the name of the save file to load:"
        file_name = gets.chomp
        game = Game.new()
        game.load_game("save-files/#{file_name}")
        puts "Game loaded. Current word: " + game.user_word
        puts "Wrong guesses: " + game.wrong_guesses.join(', ')
        game.print_output(game.wrong_guesses.length)
    else
        puts "No save files found. Starting a new game."
        game = Game.new()
        puts "Current word: " + ("_" * game.word.length)
    end
else
    game = Game.new()
    puts "Current word: " + ("_" * game.word.length)
end

while !game.game_over
    puts "Enter your letter guess or ESC to save and quit:"
    guess = gets.chomp.downcase
    if guess == "\e"
        game.save_game()
    else
        game.is_game_over?(guess)
    end
end