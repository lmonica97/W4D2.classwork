require_relative "piece"
require "singleton"

class NullPiece < Piece
    include Singleton
    def initialize
        
        # super(color) #remember to add back symbol
    end
end