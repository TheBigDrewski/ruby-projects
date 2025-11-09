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
        # Record the guess
        @guesses.push(guess)

        # Prepare feedback symbols
        feedback = Array.new(guess.length)
        # Work on a copy of the secret code so we can mark matched colors
        code_copy = @code.clone

        # First pass: correct color in correct position (":")
        guess.each_index do |i|
            if guess[i] == code_copy[i]
                feedback[i] = ":"
                code_copy[i] = nil
            end
        end

        # Second pass: correct color in wrong position (".")
        guess.each_index do |i|
            next if feedback[i] == ":" # already matched correctly
            if code_copy.include?(guess[i])
                feedback[i] = "."
                # Remove the first occurrence to avoid double counting
                code_copy[code_copy.index(guess[i])] = nil
            end
        end

        # Determine game state
        if guess == @code
            @game_over = true
            puts "You win"
        elsif @guesses.length >= 12
            @game_over = true
            puts "You lose. Try again?"
        else
            puts "Guess ##{@guesses.length} incorrect. Try again."
            # Print feedback on the same line without revealing positions
            puts feedback.compact.join('')
        end
    end

end