# Decorator Pattern
# Date: 16-Mar-2016
# Authors:
#          A01371743 Luis E. Ballinas Aguilar

class Beverage

  def initialize
  end

  def description
  end

  def cost
  end

end

class DarkRoast < Beverage

  def description
    "Dark Roast Coffee"
  end

  def cost
    0.99
  end

end

class Espresso < Beverage


  def description
    "Espresso"
  end

  def cost
    1.99
  end

end

class HouseBlend < Beverage

 def description
   "House Blend Coffee"
 end

 def cost
    0.89
 end

end

class CondimentDecorator < Beverage

  def initialize(bevanda)
    @bevanda = bevanda
  end

end

class Mocha < CondimentDecorator

  def cost
     @bevanda.cost + 0.2
  end

  def description
    @bevanda.description << ", Mocha"
  end

end



class Whip < CondimentDecorator

  def cost
    @bevanda.cost  + 0.1
  end

  def description
    @bevanda.description << ", Whip"
  end

end


class Soy < CondimentDecorator


  def cost
    @bevanda.cost + 0.15
  end

  def description
    @bevanda.description  << ", Soy"
  end

end


class Milk < CondimentDecorator


  def cost
    @bevanda.cost  + 0.1
  end


  def description
    @bevanda.description  << ", Milk"
  end

end
