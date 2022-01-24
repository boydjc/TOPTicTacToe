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
	
	@board.displayBoard()
	if (@winner == 'x' && @player.getSymbol() == 'x') ||
       (@winner == 'o' && @player.getSymbol() == 'o')
	  puts "Player wins!"
	elsif (@winner == 'x' && @computer.getSymbol() == 'x') ||
	      (@winner == 'o' && @computer.getSymbol() == 'o')
      puts "Computer Wins!"
	elsif @winner == 'f' # board is full 
	  puts "It is a draw!"
    end
  end
end

game = Game.new()
game.startGame()
