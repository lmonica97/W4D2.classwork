require_relative "piece"
require "singleton"

class NullPiece < Piece
    include Singleton
    def initialize
        super(color, symbol)
    end
end