class Shooter

  def shooting_timer(player_target)
    starting = Time.now
    if task
      ending = Time.now
      result_time = ending.to_i - starting.to_i
      if result_time < TIME
        hit_points = TIME - result_time
        puts "BOOM! on #{hit_points} points"
        player_target.hit(hit_points)
      else
        puts "TOO SLOW"
      end
    else
      puts "incorrect = no BOOM!"
    end
  end

  private

  TIME = 20
  HARDNESS = 100

  def task
    a = rand(0..HARDNESS)
    b = rand(-1 * HARDNESS..HARDNESS)
    c = rand(-1 * HARDNESS..HARDNESS)
    puts task_string = a.to_s + (b >= 0 ? "+" + b.to_s : b.to_s) + (c >= 0 ? "+" + c.to_s : c.to_s)  + " = ?"
    puts "write your answer, pidor. you have #{TIME} seconds"
    result = gets.chomp.to_i

    a + b + c == result
  end
end