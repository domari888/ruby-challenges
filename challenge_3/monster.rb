class Monster < Character
  def disp_monster
    puts "#{@name}が現れた！"
  end

  def attack(brave)
    puts "#{@name}の攻撃！"
    damage = @offence - brave.defence / 2
    # damage が 1 より小さくなる場合、与えるダメージを 1 とする
    damage = 1 if damage < 1
    puts "#{brave.name}は#{damage}のダメージを受けた！"
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0
  end
end