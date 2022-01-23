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

  def checkForWinner()
    winner = nil
	winner = checkDiagonals()
    #if checkRows() != nil
	#  winner = checkRows()
	#elsif checkColumns() != nil
	#  winner = checkColumns()
	#elsif checkDiagonals() != nil
	#  winner = checkDiagonals()
	#end
	return winner
  end

  private 
  def checkRows()
    @board.each_with_index do |row, rIndex|
	  if row[0] == 'x' && row[1] == 'x' && row[2] == 'x'
	    return 'x'
	  elsif row[0] == 'o' && row[1] == 'o' && row[2] == 'o'
	    return 'o'
	  else
	    return nil
	  end
	end
  end

  def checkColumns() 
    for rowCount in 0...3
	    colCount = 0
	    if @board[colCount][rowCount] == 'x' &&
		  @board[colCount+1][rowCount] == 'x' &&
		  @board[colCount+2][rowCount] == 'x'
		  return 'x' 
		elsif @board[colCount][rowCount] == 'o' &&
		  @board[colCount+1][rowCount] == 'o' &&
		  @board[colCount+2][rowCount] == 'o'
		  return 'o'
	  end
	end
	return nil
  end

  def checkDiagonals()
    if @board[1][1] == 'x'
	  if (@board[0][0] == 'x' && @board[2][2] == 'x') ||
	     (@board[0][2] == 'x' && @board[2][0] == 'x')
		 return 'x'
	  end
	elsif @board[1][1] == 'o'
	  if (@board[0][0] == 'o' && @board[2][2] == 'o') ||
	     (@board[0][2] == 'o' && @board[2][0] == 'o')
		 return 'o'
	  end
	end
	return nil
  end
end
