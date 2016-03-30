# Domain-Specific Language Pattern
# Date: 30-Mar-2016
# Authors:
#          A01371743 Luis E. Ballinas Aguilar


class Game

  def self.+(parameter)
    if self == parameter
      puts "#{self} tie (winner #{self})"
      return self
    elsif (self == Scissors && parameter == Paper) || (self == Paper && parameter == Scissors)
      puts "Scissors cut Paper (winner Scissors)"
      return Scissors
    elsif (self == Paper && parameter == Rock) || (self == Rock && parameter == Paper)
      puts "Paper covers Rock (winner Paper)"
      return Paper
    elsif (self == Rock && parameter == Lizard) || (self == Lizard && parameter == Rock)
      puts "Rock crushes Lizard (winner Rock)"
      return Rock
    elsif (self == Lizard && parameter == Spock) || (self == Spock && parameter == Lizard)
      puts "Lizard poisons Spock (winner Lizard)"
      return Lizard
    elsif (self == Spock && parameter == Scissors) || (self == Scissors && parameter == Spock)
      puts "Spock smashes Scissors (winner Spock)"
      return Spock
    elsif (self == Scissors && parameter == Lizard) || (self == Lizard && parameter == Scissors)
      puts "Scissors decapitate Lizard (winner Scissors)"
      return Scissors
    elsif (self == Lizard && parameter == Paper) || (self == Paper && parameter == Lizard)
      puts "Lizard eats Paper (winner Lizard)"
      return Lizard
    elsif (self == Paper && parameter == Spock) || (self == Spock && parameter == Paper)
      puts "Paper disproves Spock (winner Paper)"
      return Paper
    elsif (self == Spock && parameter == Rock) || (self == Rock && parameter == Spock)
      puts "Spock vaporizes Rock (winner Spock)"
      return Spock
    elsif (self == Rock && parameter == Scissors) || (self == Scissors && parameter == Rock)
      puts "Rock crushes Scissors (winner Rock)"
      return Rock
    end

  end

  def self.-(parameter)
    if self == parameter
      puts "#{self} tie (winner #{self})"
      return self
    elsif (self == Scissors && parameter == Paper) || (self == Paper && parameter == Scissors)
      puts "Scissors cut Paper (loser Paper)"
      return Paper
    elsif (self == Paper && parameter == Rock) || (self == Rock && parameter == Paper)
      puts "Paper covers Rock (loser Rock)"
      return Rock
    elsif (self == Rock && parameter == Lizard)  || (self == Lizard && parameter == Rock)
      puts "Rock crushes Lizard (loser Lizard)"
      return Lizard
    elsif (self == Lizard && parameter == Spock) || (self == Spock && parameter == Lizard)
      puts "Lizard poisons Spock (loser Spock)"
      return Spock
    elsif (self == Spock && parameter == Scissors) || (self == Scissors && parameter == Spock)
      puts "Spock smashes Scissors (loser Scissors)"
      return Scissors
    elsif (self == Scissors && parameter == Lizard) || (self == Lizard && parameter == Scissors)
      puts "Scissors decapitate Lizard (loser Lizard)"
      return Lizard
    elsif (self == Lizard && parameter == Paper) || (self == Paper && parameter == Lizard)
      puts "Lizard eats Paper (loser Paper)"
      return Paper
    elsif (self == Paper && parameter == Spock) || (self == Spock && parameter == Paper)
      puts "Paper disproves Spock (loser Spock)"
      return Spock
    elsif (self == Spock && parameter == Rock) || (self == Rock && parameter == Spock)
      puts "Spock vaporizes Rock (loser Rock)"
      return Rock
    elsif (self == Rock && parameter == Scissors) || (self == Scissors && parameter == Rock)
      puts "Rock crushes Scissors (loser Scissors)"
      return Scissors
    end
  end

end


class Rock < Game
end

class Paper < Game
end

class Scissors < Game
end

class Lizard < Game
end

class Spock < Game
end




def show(exp)
  puts "Result = #{exp}"
end
