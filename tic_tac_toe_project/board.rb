class Board
    attr_accessor :game_board
    def initialize
        @game_board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    end
    
    def print_board
            print " #{self.game_board[0]} | #{self.game_board[1]} | #{self.game_board[2]} \n"
            print "-----------\n"
            print " #{self.game_board[3]} | #{self.game_board[4]} | #{self.game_board[5]} \n"
            print "-----------\n"
            print " #{self.game_board[6]} | #{self.game_board[7]} | #{self.game_board[8]} \n\n"
    end

    def make_move(place, piece)
        spot = place - 1
        if spot >= 0 and spot < 9
            if self.game_board[spot] != "X" && self.game_board[spot] != "O"
                self.game_board[spot] = piece
                return true
            else
                return false
            end
        else
            return false
        end
    end
end