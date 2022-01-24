require './player.rb'
require './board.rb'
require './computer.rb'

class Game
  def initialize()
    @board = Board.new()
	@winner = nil
	@player = Player.new()
	@computer = Computer.new()
  end

  public
  def startGame()
    @board.configureBoard()
    @player.chooseSymbol()
	@computer.chooseSymbol(@player.getSymbol())
	puts "Player symbol is: #{@player.getSymbol()}"
	puts "Computer symbol is: #{@computer.getSymbol()}"

	while @winner == nil
	  @board.displayBoard()
	  playerChoice = @player.makeChoice()
	  @board.placeChoice(playerChoice, @player.getSymbol())
	  @winner = @board.checkForWinner()
	  if @winner != nil
	    break
	  end
	  compChoice = @computer.makeChoice(@board.getBoard())
	  @board.placeChoice(compChoice, @computer.getSymbol())
      @winner = @board.checkForWinner()
	end
  end
end

game = Game.new()
game.startGame()
