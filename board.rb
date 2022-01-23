class Board
  def initialize()
    @board = Array.new(3) {Array.new(3)}
  end

  public 
  def displayBoard()
    slot_counter = 1
    @board.each_with_index do |row, rIndex|
	  row.each_with_index do |slot, sIndex|
	    if slot == nil
		  @board[rIndex][sIndex] = slot_counter
		  slot_counter += 1
		end
	  end
	  p row
	end
  end
end
