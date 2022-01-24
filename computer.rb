class Computer
  def initialize()
  end

  public
  def makeChoice()
  end

  def chooseSymbol(playerSymbol)
	if playerSymbol == 'x'
	  @symbol = 'o'
	else
	  @symbol = 'x'
	end
  end

  def makeChoice(gameBoard)
    
	choiceMade = false
	compChoice = 0
	while not choiceMade
	  compChoice = rand(0...10)

      gameBoard.each_with_index do |row, rIndex|
        row.each_with_index do |slot, sIndex|
	   	  if row.any? compChoice
		    choiceMade = true
		  end
	    end
      end
	end
	return compChoice
  end

  def getSymbol()
    return @symbol
  end
end
