=begin def sum (a, b=Math::PI, c=a)

    a+b
    a+c
end

puts sum(10, 2, 5)
puts sum(10)
=end

shapes = Hash.new
shapes = {
    "Rectangle" => [2, 15, 8, 4],
    "Circle" => [5, 11],
    "Triangle" => [3, 12, 6],
    "Rectangle" => [[3, 12, 6],
    "Circle" => [5, 2, 15, 11],
    "Triangle" => [7, 13, 12]]

}

puts shapes["Circle"]