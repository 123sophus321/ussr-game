require_relative 'source/player.rb'
require_relative 'source/modules/validate_name.rb'
require_relative 'source/shooter'
require_relative 'source/rounds'
class Game
  include ValidateName

  puts "write name"
  #name =  validate!(gets.chomp) #todo fix undefined method `validate!' for Game:Class
  # name = gets.chomp
  name = "Player1"
   player1 = Player.new(name)
  player2=  Player.new("player2")
  # #puts player.name("qwe")
  # shooter= Shooter.new
  # shooter.shooting_timer(player)
  # puts player.check_health
  #
  #
  round = Rounds.new(player1, player2)
  round.move

end