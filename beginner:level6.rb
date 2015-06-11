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



MAX_HEALTH = 20
  LOW_HEALTH <= 10

  def play_turn(warrior)
    MAX_HEALTH = @health
    if warrior.feel.empty?
      warrior.walk!(:backward)
      if warrior.feel.captive?(:backward)
        warrior.rescue!
      end
   elsif warrior.feel.empty? == false
      if warrior.feel.enemy?
        if @health == LOW_HEALTH
          warrior.retreat!
        else warrior.attack!
        end
      end
    end
    end
    @end_health = warrior.health
  end

  def taking_damage?
    if @end_health > @health
      true
    else
      false
  end

  def retreat!
    if taking_damage? == true
      warrior.walk!(:backward)
    else
      warrior.rest!
  end
end
