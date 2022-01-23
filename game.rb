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
    @player.chooseSymbol()
	@computer.chooseSymbol(@player.getSymbol())
	puts "Player symbol is: #{@player.getSymbol()}"
	puts "Computer symbol is: #{@computer.getSymbol()}"
	@board.displayBoard()
    @board.checkForWinner()
  end
end

game = Game.new()
game.startGame()
