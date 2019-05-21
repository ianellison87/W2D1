class Piece

  def initialize

  end

  def inspect
    "piece"
  end

end

class NullPiece < Piece

  def initialize
  end

  def inspect
    "null"
  end

  # def is_a?(object)
  #   object.is_a?(NullPiece)
  # end

end