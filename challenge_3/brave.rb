class Brave < Character
  def attack(monster)
    puts "#{@name}の攻撃！"
    damage = @offence - monster.defence / 2
    # damage が 1 より小さくなる場合、与えるダメージを 1 とする
    damage = 1 if damage < 1
    puts "#{monster.name}に#{damage}のダメージを与えた！"
    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0
  end
end 