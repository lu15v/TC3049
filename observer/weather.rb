# Observer Pattern
# Date: 03-Feb-2016
# Authors:
#          A01371743 Luis E. Ballinas Aguilar

require "observer"


class WeatherData
    
    include Observable
    
   def initialize
   end
   
   
  def set_measurements(temperature, humidity, pressure)
    changed
    notify_observers(temperature,humidity,pressure)
  end
   
    
end


class CurrentConditionsDisplay
    
    def update(temperature, humidity,pressure)
        puts "Current conditions: #{temperature}°F and #{humidity}% humidity"
    end
    
end


class StatisticsDisplay
    
    def initialize
        @max = nil;
        @avg = nil;
        @min = nil;
        @count = 0;
        @total = 0;
    end
    
    def update(temperature, humidity, pressure)
        
        @total += temperature
        @count += 1
        
        @max = temperature if @max == nil or temperature > @max
     
        @min = temperature if @min == nil or @min > temperature 
        
        # @avg = @count <=1 or @avg == nil ? ( @avg = temperature) : ( @avg = @total/@count)
        @avg = if @count <=1 or @avg == nil then temperature else @total/@count end
       
        puts "Avg/Max/Min temperature = #{@avg}/#{@max}/#{@min}"
        
    end 
    
    
    
end


class ForecastDisplay
    
   def initialize
    @lastPreasure = 0
   end
    
  def update(temperature, humidity, pressure)
      
      
      
      if @lastPreasure < pressure
        puts "Forecast: Improving weather on the way!"
      elsif @lastPreasure > pressure
        puts "Forecast: Watch out for cooler, rainy weather"
      else
         puts "Forecast: More of the same"
      end
     
     @lastPreasure = pressure
      
  end
    
    
end