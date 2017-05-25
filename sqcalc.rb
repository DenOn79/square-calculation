class Shape
    attr_accessor :paramA, :paramB
    def initialize(paramA, paramB)
        @paramA = paramA
        @paramB = paramB
    end
    
    def calcArea
        return @paramA*@paramB
    end
    
    def calcAreaCircle
        return Math::PI*(@paramA**2)
    end
end

class Rectangle < Shape; end

class Triangle < Shape
    def calcArea
        return super/2
    end
end

class Circle < Shape; end

def Output(shape, values_array, number)
            puts "#{shape}: "
    (0..number.to_i+1).each do |i|
      if values_array[i+1] == nil
        puts "End of data"
        puts
        break
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
         (0..number.to_i).each do |i|
        if values_array[i+1] == nil
        puts "End of data"
        puts
        break
      else
         circle = Circle.new(values_array[i].to_i, values_array[i+1].to_i)
         puts circle.calcAreaCircle
        end
    end
        else
            puts "Unknown figure #{shape}"
            puts
        end
    end
end
