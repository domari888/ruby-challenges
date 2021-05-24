class Monster < Character
  def disp_monster
    puts "#{@name}が現れた！"
  end

  def attack(brave)
    puts "#{@name}の攻撃！"
    hitpoints = @offence - brave.defence / 2
    # hitpointがマイナスとなる場ダメージを 1 とする
    hitpoints = 1 if hitpoints <= 0 
    puts "#{brave.name}は#{hitpoints}のダメージを受けた！"
    brave.hp -= hitpoints
    brave.hp = 0 if brave.hp < 0    
  end
end