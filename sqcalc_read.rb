class Square
    def areaCalc(side)
      squareArea = side ** 2
      puts squareArea
    end
end

class Circle
    def areaCalc(radius)
      circleArea = 3.14*(radius**2)
      puts circleArea
    end
end

class Triangle
    def areaCalc(side, height)
      triangleArea = (side*height)/2
      puts triangleArea
    end
end

data = open "sqcalc_src.txt"
 
data.each do |line|
   shape = line.split(" ")
   number = shape.count.to_i - 1
   case shape[0].downcase
      when "square"
         puts "Square: "
         (1..number.to_i).each do |i|
         square = Square.new
         square.areaCalc(shape[i].to_i)
      end
      when "circle"
         puts "Circle: "
         (1..number.to_i).each do |i|
         circle = Circle.new
         circle.areaCalc(shape[i].to_i)
      end
      when "triangle"
         puts "Triangle: "
         (1..number.to_i).each do |i|
         triangle = Triangle.new
         triangle.areaCalc(shape[i].to_i, 5)
      end
      end
end
 
data.close

