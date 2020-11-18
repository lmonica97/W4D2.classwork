require_relative "piece"
require_relative "null_piece"
class Board
    def self.create_board
        @rows = Array.new(8) {Array.new(8)}
        @null_piece = NullPiece.instance
    end
    attr_reader :rows, :null_piece, :piece
    def initialize
        # @rows = Board.create_board
        # @null_piece = NullPiece.instance
        @piece = Piece.new(:black, [0,0])
    end

    def [](pos)
        row, column = pos
        @rows[row][column]
    end

    def []=(pos, val)
        row, column = pos
        @rows[row][column] = val
    end

    def move_piece(start_pos, end_pos)
        if !valid_pos(end_pos)
            raise "Ending position is invalid!"
        end
        if @rows[start_pos] != @piece
            raise "There's nothing there!"
        else
            self[end_pos] = :black
            p @rows
        end
    end

    def valid_pos?(pos)
        row, column = pos
        if row < 0 || row > 7 && column < 0 || column > 7
            raise "Invalid move!"
            return false
        end
        true
    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)
    
    end
end