class Player
  def play_turn(warrior)
    if warrior.feel.empty? == true
      warrior.walk!
  else
      warrior.attack!
    end
  end
end
