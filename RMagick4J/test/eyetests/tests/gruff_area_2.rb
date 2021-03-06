require 'rubygems'
require 'gruff'
require File.join(File.dirname(__FILE__), 'new_image.rb')

@datasets = [
              [:Jimmy, [25, 36, 86, 39, 25, 31, 79, 88]],
              [:Charles, [80, 54, 67, 54, 68, 70, 90, 95]],
              [:Julie, [22, 29, 35, 38, 36, 40, 46, 57]],
              [:Jane, [95, 95, 95, 90, 85, 80, 88, 100]],
              [:Philip, [90, 34, 23, 12, 78, 89, 98, 88]],
              ["Arthur", [5, 10, 13, 11, 6, 16, 22, 32]],
            ]

g = Gruff::Area.new
g.title = "Visual Multi-Area Graph Test"
g.labels = {
  0 => '5/6', 
  2 => '5/15', 
  4 => '5/24', 
  6 => '5/30', 
}
@datasets.each do |data|
  g.data(data[0], data[1])
end

# Default theme
g.write("gruff_area_2.jpg")