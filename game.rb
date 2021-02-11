require_relative 'source/player.rb'
require_relative 'source/modules/validate_name.rb'
class Game
  include ValidateName

  puts "write name"
   name =  validate!(gets.chomp) #todo fix undefined method `validate!' for Game:Class
  # name = gets.chomp
  player = Player.new(name)
  puts player.name

end