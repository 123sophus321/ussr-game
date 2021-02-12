require_relative 'source/player'
require_relative 'source/validate_name'
require_relative 'source/shooter'
require_relative 'source/rounds'

include Abc


  puts "write name"
#   name =  validate2 #todo fix undefined method `validate!' for Game:Class
# puts name
   player1 = Player.new("player1")
  player2=  Player.new("player2")

  round = Rounds.new(player1, player2)
  round.move


