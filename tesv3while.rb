
class Player
  attr_accessor :name, :blood, :mana
  def initialize()
     @blood = 100
     @mana = 40
  end
end




print '
# ===================================== #
# Welcome to the Battle Arena           #
# ------------------------------------- #
# Description:                          #
# 1 type "enter" to create character    #
# ===================================== #
'
enter = gets
enter = enter.chomp
if enter == "enter"
  
else
  abort("Please type enter to begin")
end

puts "Put first hero name ";
name = gets
name = name.chomp

puts "Choose position attack or defend:";
position1 = gets
position1 = position1.chomp
puts "*******************"
puts "Hero 1: " + name
player = Player.new
p1hp = player.blood
p1mana = player.mana
puts p1hp
puts p1mana
puts "Position:" + position1 + "er"
puts "*******************"

puts "Put second hero name ";
name2 = gets
name2 = name2.chomp

if position1 == "attack"
  position2 = "defend"
else
  position2 = "attack"
end
puts "*******************"
puts "Hero 2: " + name2
player2 = Player.new
p2hp = player2.blood
p2mana = player2.mana
puts p2hp
puts p2mana
puts "Position:" + position2 + "er"
puts "*******************"

puts '
# ===================================== #
# Welcome to the Battle Arena           #
# ------------------------------------- #
# Description:                          #
# 1. type "start" to begin the fight    #
# ===================================== #
'
puts "Battle between " + name + " vs " + name2 + " Start"
start = gets
start = start.chomp
if start == "start"
while p1hp > 0 && p1mana > 0 && p2hp > 0 && p2mana > 0
    puts '
    # ===================================== #
    # Welcome to the Battle Arena           #
    # ------------------------------------- #
    # ===================================== #
    '
    if position1 == "attack"  
      puts "Player 1 HP:" 
      puts p1hp 
      puts "Player 1 Mana:"
      puts p1mana -= [5, 10].sample
    end

    if position1 == "defend"
      puts "Player 1 HP:" 
      puts p1hp -= [20, 25].sample
      puts "Player 1 Mana:"    
      puts p1mana
    end

    if position2 == "attack"  
      puts "Player 2 HP:"  
      puts p2hp 
      puts "Player 2 Mana:"
      puts p2mana -= [5, 10].sample
    end

    if position2 == "defend"  
      puts "Player 2 HP:"  
      puts p2hp -= [20, 25].sample
      puts "Player 2 Mana:"  
      puts p2mana 
    end 

  end  
else
  abort("Please type start to begin battle")
end




