class Piece
    attr_reader :color, :board, :pos, :symbol
    def initialize(color, array)
        @color = color
        #@symbol = symbol
        # @board = Board.create_board
        @pos = array
    end

    # def to_s

    # end

    # def empty?

    # end

    # def valid_moves

    # end

    # def pos=(val)

    # end

    # def Symbol

    # end

    # def move_into_check?(end_pos)

    # end

end