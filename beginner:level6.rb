 class Player
  def play_turn(warrior)
    @health = warrior.health
    if @end_health == nil
      warrior.walk!
    elsif @end_health > @health
      if warrior.feel.stairs? && warrior.feel.enemy? == false
        warrior.walk!(:backward)
      elsif warrior.feel.enemy?
        warrior.attack!
        elsif @health < 5
        warrior.walk!(:backward)
      else
        warrior.walk!
      end
    elsif warrior.feel.captive?(:backward)
      warrior.rescue!
    elsif @health < 20
      warrior.rest!
    else
      warrior.walk!
    end
  @end_health = warrior.health
  end
end

#can set initialize, can set health to 20

