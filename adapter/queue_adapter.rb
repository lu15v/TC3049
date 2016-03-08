# Adapter Pattern
# Date: 02-Mar-2016
# Authors:
#          A01371743 Luis E. Ballinas Aguilar


class QueueAdapter
    
    def initialize(q)
        @q = q
    end
 
    def push(x)
       @q.insert(x)
       return self
    end
 
    def pop
     return nil if empty?
     array = []
     i = 0
     size = @q.size
     while i < size
        array << @q.remove
        i += 1
     end
     
     last = array.pop
 
     array.each do |y|
        @q.insert(y)
     end
     return last
    end

    
    def peek
        return nil if empty?
        last = self.pop
        self.push(last)
        return last
    end
    
    def empty?
      @q.empty? 
    end

    def size
      @q.size 
    end
end