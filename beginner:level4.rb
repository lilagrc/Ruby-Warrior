class Player
  def play_turn(warrior)
    @health = warrior.health
    if @end_health == nil
      warrior.walk!
    elsif @end_health > @health
      warrior.attack!
    elsif @end_health < @health
      warrior.rest!
    elsif warrior.feel.enemy?
      warrior.attack!
    elsif @health < 5
    warrior.rest!
    else
      warrior.walk!
    end
  @end_health = warrior.health
  end
end
