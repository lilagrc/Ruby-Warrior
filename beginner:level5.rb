class Player
  def play_turn(warrior)
    @health = warrior.health
    if @end_health == nil
      warrior.walk!
    elsif warrior.feel.captive?
      warrior.rescue!
    elsif @end_health > @health && @health > 5
      warrior.attack!
    elsif warrior.feel.enemy?  && @health > 5
      warrior.attack!
    elsif warrior.feel.enemy? && @health <= 5 && @health >= 2
        warrior.walk!(:backward)
    elsif @health < 10
      warrior.rest!
    else
      warrior.walk!
    end
  @end_health = warrior.health
  end
end

