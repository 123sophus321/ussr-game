class Player
  attr_accessor :name
  attr_accessor :health

  def initialize(name)
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

  def check_health
     @health > 0 ? @health : 0
  end

end