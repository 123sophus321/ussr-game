class Player
  attr_reader :name

  def initialize (name)
    @name = name
    @health = 100
  end

  def hit(hit_points)
    @health -= hit_points
    check_health
  end

  def check_alive
    @health > 0
  end

  def task
    a = rand(0..1)
    b = rand(-1..1)
    c = rand(-1..1)
    #a.to_s + " " + b.to_s + c.to_s
    puts task_string = a.to_s + (b >= 0 ? "+" + b.to_s : b.to_s) + (c >= 0 ? "+" + c.to_s : c.to_s)
    puts "write your answer, pidor"
    if a + b + c == gets.chomp.to_i
      puts "boom!"
      true
    else
      puts "wrong!"
      false
    end
  end

  protected

  def check_health
    if @health > 0
      @health
    else
      0
    end
  end

  attr_writer :name
  attr_accessor :health
end