class Game
    attr_accessor :game_over, :wrong_guesses, :word_list, :word, :user_word

    def initialize()
        @game_over = false
        @wrong_guesses = Array.new()
        @word_list = File.readlines("words.txt").select { |word| word.length.between?(5,12) }.map(&:chomp)
        @word = @word_list[rand(0..@word_list.length - 1)]
        @user_word = "_" * @word.length
    end

    def is_game_over?(guess)
        check_guess(guess)

        if @user_word == @word
            @game_over = true
            puts "You win"
        elsif @wrong_guesses.length >= 6
            @game_over = true
            puts "You lose. The word was #{@word}. Try again?"
        end
        puts "Current word: #{@user_word}"
        self.print_output(@wrong_guesses.length)
    end

    def check_guess(charguess)
        if @word.include?(charguess)
            @word.chars.each_with_index do |char, index|
                if char == charguess
                    @user_word[index] = char
                end
            end
        else
            @wrong_guesses.push(charguess)
            puts "Guess ##{@wrong_guesses.length} incorrect. Try again."
            puts "Wrong guesses: " + @wrong_guesses.join(', ')
        end
    end

    def print_output(wrong_guesses)
        case wrong_guesses
        when 1
            puts "  O  "
        when 2
            puts "  O  "
            puts "  |  "
        when 3
            puts "  O  "
            puts " /|  "
        when 4
            puts "  O  "
            puts " /|\\ "
        when 5
            puts "  O  "
            puts " /|\\ "
            puts " /   "
        else
            puts "  O  "
            puts " /|\\ "
            puts " / \\ "
        end
    end
end