require_relative 'board'
require_relative 'game'

b = Game.new

puts "New game! Good luck.\n"
b.board.print_board

until b.game_over do
    puts "#{b.turn}'s move\n"
    input = gets
    if b.board.make_move(input.to_i, b.turn)
        b.turn == "X" ? b.turn = "O" : b.turn = "X"
    else
        puts "Illegal move. #{b.turn} try again.\n"
    end
    b.is_game_over
    b.board.print_board
end
