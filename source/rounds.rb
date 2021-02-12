require_relative 'shooter'

class Rounds

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @round_number = 1
    @shooter = Shooter.new
  end

  def move
    while @player1.check_health > 0 && @player2.check_health > 0
      wait
      @shooter.shooting_timer(change_players)
      puts "###########"
      puts "#{change_players.name} :  #{change_players.check_health.to_s}"
      puts "###########"
      @round_number += 1
    end
  end


  private
  
  def wait
    puts "###########"
    puts "ready???"
    puts "###########"
    gets
  end

  def change_players
    if @round_number % 2 == 0
      @player1
    else
      @player2
    end
  end
end