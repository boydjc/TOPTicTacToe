class Player
  def initialize();end

  public
  def makeChoice()
    puts "Please make a choice by inputing a valid number"
	print ":"
	choice = gets.chomp
	return choice
  end

  def chooseSymbol()
    puts "Please choose 'x' or 'o' for your symbol"
	print ":"
	@symbol = gets.chomp
  end

  def getSymbol()
    return @symbol
  end
end
