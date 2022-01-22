class Board
  def initialize()
    @board = Array.new(3, Array.new(3, ''))
  end

  public 
  def displayBoard()
    @board.each do |row|
	  p row
	end
  end
end

board = Board.new()

board.displayBoard()
