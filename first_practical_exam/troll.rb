#==========================================================
# Luis eduardo ballinas aguilar A01371743
#==========================================================
 
#==========================================================
# Code for question 1
 
class Troll
  attr_reader :name, :power
  def initialize(name, power)
    @name = name
    @power = power
  end
  def to_s
    "#{ @name } (#{ @power})"
  end
end
 
#----------------------------------------------------------


class TrollArmy
  attr_accessor :formation_strategy
  def initialize
    @formation_strategy = nil
    @troles = []
  end
  def add(obj)
    @troles << obj
    self
  end
  def attack
    if @formation_strategy == nil
      puts "Undefined strategy, cannot attack."
    else
      puts "*** Attack formation ***"
      formation_strategy.attack(@troles)
    end
  end
 
end
 
class NameFormationStrategy
  def attack(troles)
    ordenados = troles.sort { |a,b| a.name <=> b.name }
    ordenados.each do |obj|
      puts obj.name + " (" + obj.power.to_s + ")"
    end
  end
end
 
 
class PowerFormationStrategy
  def attack(troles)
    ordenados = troles.sort { |a,b| b.power <=> a.power }
    ordenados.each do |obj|
      puts obj.name + " (" + obj.power.to_s + ")"
    end
  end
end
#----------------------------------------------------------
