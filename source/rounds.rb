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
      @shooter.shooting_timer(next_players)
      puts "###########"
      puts "#{@player1.name} :  #{@player1.check_health.to_s}"
      puts "###########"
      puts "#{@player2.name} :  #{@player2.check_health.to_s}"
      puts "###########"
      @round_number += 1
    end
  end

  private

  def wait
    puts "--------------------------"
    puts "are you ready #{whose_move.name}??? -  type something"
    puts "--------------------------"
    gets
  end

  def whose_move
    next_players == @player1 ? @player2 : @player1
  end

  def next_players
     @round_number % 2 == 0 ? @player1 : @player2

  end
end