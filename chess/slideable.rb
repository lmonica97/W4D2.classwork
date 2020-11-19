module Slideable
    # attr_reader :HORIZONTAL_DIR, :DIAGONAL_DIR
    HORIZONTAL_DIR = [
    [0, -1], # left
    [0, 1], # right
    [1, 0], # up (vertical)
    [-1, 0]  # down (vertical)
    ].freeze

    DIAGONAL_DIR = [
    [1, -1], # up + left
    [1, 1], # up + right
    [-1, -1], # down + left
    [-1, 1]  # down + right
    ].freeze
    
    def horizontal
        self::HORIZONTAL_DIR
    end

    def diagonal
        self::DIAGONAL_DIR
    end

   def moves
    arr = []
   end


   private
   def move_dirs

   end

   def grow_unblocked_moves_in_dir(dx, dy)
        pos = x, y 
        poss_position = []

        xmax = dx + x
        ymax = dy + y 
        new_pos = [xmax, ymax]
        
        (1...@board.length).each do |i|
            if @board.valid_pos?(xmax, ymax)
                poss_positiion << [xmax, ymax]
                xmax += dx
                ymax += dy    
            
        
        until xmax > 7 || xmax < 0 && ymax > 7 || ymax < 0


   end

end