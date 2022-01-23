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

  def getSymbol()
    return @symbol
  end
end
