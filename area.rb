class Figure
    attr_accessor :params
    def initialize (params)
        @params = params
    end
    
    def calcArea
        @params[0] + @params[1]
    end
end

array = {1, 2}

fig = Figure.new
puts fig.calcArea(array)