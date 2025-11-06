class Game 
    attr_accessor :game_over, :guesses, :code

    @@colors = ["B", "G", "O", "P", "R", "Y"]

    def initialize
        @game_over = false
        @guesses = Array.new()
        @code = self.generate_code
    end

    def generate_code
        arr = []
        4.times do |i|
            arr.push(@@colors.sample)
        end
        return arr
    end

    def is_game_over?(guess)
        @guesses.push(guess)
        response = []
        correct = @code
        guess.each_index do |index|
            if guess[index] == correct[index]
                response.push(":")
            elsif correct.include?(guess[index])
                response.push(".")
                correct[index] = ""
            end
        end
        if guess == @code
            @game_over == true
            puts "You win"
        elsif @guesses.length >= 12
            @game_over == false
            puts "You lose. Try again?"
        else
            puts "Guess ##{@guesses.length} incorrect. Try again."
            puts response
        end
    end

end