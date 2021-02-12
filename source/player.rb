class Player
  attr_reader :name

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
    if @health > 0
      @health
    else
      0
    end
  end

  private

  attr_writer :name
  attr_accessor :health
end