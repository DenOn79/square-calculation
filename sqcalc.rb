class Shape
    attr_accessor :paramA, :paramB
    def initialize(paramA, paramB)
        @paramA = paramA
        @paramB = paramB
    end
    
    def calcArea
        return @paramA*@paramB
    end
<<<<<<< HEAD
    def calcAreaCircle
        return Math::PI*(@paramA**2)
=======
end

class Rectangle < Shape; end

class Triangle < Shape
    def calcArea
        return super/2
    end
end

class Circle < Shape
    def calcArea
    
    end
end

def Output(shape, values_array, number)
            puts "#{shape}: "
    (0..number.to_i-1).each do |i|
      if values_array[i+1] == nil
        puts "Can't count. One parameter is missing"
        #break
      else
        className = Object.const_get("#{shape}").new(values_array[i].to_i, values_array[i+1].to_i)
        puts "Area of #{i+1} #{shape} = #{className.calcArea}"
      end
>>>>>>> 7aaf123adbdd9226a1e74058cff892b8afca50e1
    end
end
        
        
source = ARGV[0].to_s
unless File.exist?("#{source}")
    puts "Error: No such file: #{source}"
else
    puts "there is file named #{source}"
    content = File.open("#{source}", "r+")
    content.each do |line|
        shape, values = line.split(":")
        values = values.gsub(" ", "").chomp
           values_array = values.split(",")
           number = values_array.count.to_i
            
       
        case shape.downcase
        when shape.nil?
            puts "There is no figure name in this line!"
        when "rectangle"
            Output(shape, values_array, number)
        when "triangle"
            Output(shape, values_array, number)
        when "circle"
            Output(shape, values_array, number)
        else
            puts "I don't know such figure #{shape}"
        end

<<<<<<< HEAD
class Rectangle < Shape; end

class Triangle < Shape
    def calcArea
        return super/2
    end
end

class Circle < Shape
    def calcArea
    
    end
end

def Output(shape, values_array, number)
            puts "#{shape}: "
    (0..number.to_i-1).each do |i|
      if values_array[i+1] == nil
        puts "Can't count. One parameter is missing"
        #break
      else
        className = Object.const_get("#{shape}").new(values_array[i].to_i, values_array[i+1].to_i)
        puts "Area of #{i+1} #{shape} = #{className.calcArea}"
      end
    end
end
        
        
source = ARGV[0].to_s
unless File.exist?("#{source}")
    puts "Error: No such file: #{source}"
else
    puts "there is file named #{source}"
    content = File.open("#{source}", "r+")
    content.each do |line|
        shape, values = line.split(":")
        values = values.gsub(" ", "").chomp
           values_array = values.split(",")
           number = values_array.count.to_i
            
       
        case shape.downcase
        when shape.nil?
            puts "There is no figure name in this line!"
        when "rectangle"
            Output(shape, values_array, number)
        when "triangle"
            Output(shape, values_array, number)
        when "circle"
          puts "Circle: "
         (0..number.to_i-1).each do |i|
         circle = Circle.new(values_array[i].to_i, values_array[i+1].to_i)
         puts circle.calcAreaCircle
     end
        else
            puts "Unknown figure #{shape}"
        end

=======
>>>>>>> 7aaf123adbdd9226a1e74058cff892b8afca50e1
     end
end
