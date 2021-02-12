require_relative 'source/player.rb'
require_relative 'source/modules/validate_name.rb'
require_relative 'source/shooter'
class Game
  include ValidateName

  puts "write name"
  #name =  validate!(gets.chomp) #todo fix undefined method `validate!' for Game:Class
  # name = gets.chomp
  name = "qwe"
  player = Player.new(name)
  #puts player.name("qwe")
  shooter= Shooter.new
  shooter.shooting_timer(player)
  puts player.check_health

end