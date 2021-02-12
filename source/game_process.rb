require_relative 'rounds'
require_relative 'player'

class Game_process
  def initialize
    let_the_battle_begin
  end
  def let_the_battle_begin
    greetings
    get_players
    Rounds.new(@player1, @player2).move
    winner_and_loser
  end

  private

  def get_players
    puts "Tell me your name, pidor1"
    @player1 = Player.new(validate)
    puts "Now you, pidor2"
    @player2 = Player.new(validate)

  end

  def winner_and_loser
    winner_name = @player1.check_alive ? @player1.name : @player2.name
    looser_name = winner_name == @player1.name ? @player2.name : @player1.name
    puts "++++++++++++++++++"
    puts "you are the winner, #{winner_name} and you can get some bread "
    puts "++++++++++++++++++"
    puts "you are the loser , #{looser_name}. try to drink vodka or fuck a bear"
    puts "++++++++++++++++++"
  end

  def greetings
    puts "+++++++++++++++++++++++++++++++++++++"
    puts "+++ THIS IS THE USSR GAME, PIDORY +++"
    puts "+++++++++++++++++++++++++++++++++++++"
  end

  def validate
    name = gets.chomp
    while name.length < 2
      puts "name should be longer, mr.pidor"
      name = gets.chomp
    end
    name
  end

end