require "./character.rb"
require "./monster.rb"
require "./brave.rb"

monsters = [
  {name: "デーモン", hp: 210, offence: 140, defence: 80},
  {name: "シドー", hp: 250, offence: 255, defence: 255},
  {name: "スライム", hp: 160, offence: 30, defence: 100}
]

monster = Monster.new(monsters[rand(0..2)])
monster.disp_monster
brave = Brave.new(name: "勇者", hp: 238, offence: 203, defence: 129)

def info(brave, monster)
  puts <<~EOS
  *=*=*=*=*=*=*=*=*=*=*
  [勇者] HP : #{brave.hp}
  [敵] HP : #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*
  EOS

  puts "#{monster.name}をやっつけた！" if monster.hp == 0
  puts "#{brave.name}は死んでしまった。" if brave.hp == 0
end

while true
  brave.attack(monster)
  break if monster.hp == 0
  monster.attack(brave)
  break if brave.hp == 0
  info(brave, monster)
end

info(brave, monster)