class Game
    attr_accessor :board, :turn, :game_over, :winner
    def initialize
        @board = Board.new
        @turn = "X"
        @game_over = false
        @winner = 0
    end

    def is_game_over
        if board.game_board[0] == board.game_board[1] && board.game_board[1] == board.game_board[2]
            self.game_over = true
            puts "Game Over! #{turn} wins!"
        elsif board.game_board[3] == board.game_board[4] && board.game_board[4] == board.game_board[5]
            self.game_over = true
            puts "Game Over! #{turn} wins!"
        elsif board.game_board[6] == board.game_board[7] && board.game_board[7] == board.game_board[8]
            self.game_over = true
            puts "Game Over! #{turn} wins!"
        elsif board.game_board[0] == board.game_board[4] && board.game_board[4] == board.game_board[8]
            self.game_over = true
            puts "Game Over! #{turn} wins!"
        elsif board.game_board[2] == board.game_board[4] && board.game_board[4] == board.game_board[6]
            self.game_over = true
            puts "Game Over! #{turn} wins!"
        elsif board.game_board[0] == board.game_board[3] && board.game_board[3] == board.game_board[6]
            self.game_over = true
            puts "Game Over! #{turn} wins!"
        elsif board.game_board[1] == board.game_board[4] && board.game_board[4] == board.game_board[7]
            self.game_over = true
            puts "Game Over! #{turn} wins!"
        elsif board.game_board[2] == board.game_board[5] && board.game_board[5] == board.game_board[8]
            self.game_over = true
            puts "Game Over! #{turn} wins!"
        elsif
            if board.game_board.all? { |ele| ele == "X" || ele == "O"}
                self.game_over = true
                puts "Stalemate! Try again."
            end
        end
        return self.game_over
    end
end