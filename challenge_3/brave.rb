class Brave < Character
  def attack(monster)
    puts "#{name}の攻撃！"
    hitpoints = offence - monster.defence / 2
    # hitpointがマイナスとなる場合ダメージを 1 とする
    hitpoints = 1 if hitpoints < 1 
    puts "#{monster.name}に#{hitpoints}のダメージを与えた！"
    monster.hp -= hitpoints
    monster.hp = 0 if monster.hp < 0    
  end
end