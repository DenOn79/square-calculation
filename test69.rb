
class Figure
    attr_accessor :params
    def initialize (params)
        @params = params
    end
    
    def calcArea(number)
      rez = Array.new
      (0 .. number.to_i).each do |i|
        unless params[i+1].nil?
         a = @params[i].to_i * @params[i+1].to_i
        else
         break
         end
        rez << a
      end
      return rez
    end
end

class Rectangle < Figure; end

class Triangle < Figure
    def calcArea(number)
        super/2
    end
end

class Circle < Figure
    def calcArea(number)
        
    end
end

array = [10, 2, 15, 7]
number = array.count.to_i

fig = Figure.new(array)
print fig.calcArea(number)

#tri = Triangle.new(array)
#puts tri.calcArea(number)














