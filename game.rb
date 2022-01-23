require './player.rb'

class Game
  def initialize()
    @player = Player.new("TEST PLAYER")
  end
end

game = Game.new()
