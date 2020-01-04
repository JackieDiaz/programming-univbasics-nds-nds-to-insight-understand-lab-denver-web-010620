require 'yaml'
require 'pry'
def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
  pp
end

def print_first_directors_movie_titles
  rot13[0][0]
  
end


#   row_index = 0
#   while row_index < rot13.length do
#     puts "Row #{row_index} has #{rot13[row_index]} columns"
    
#     column_index = 0 
#     while column_index < rot13[row_index].length do
#       coord = "#{row_index}, #{column_index}"
#       inner_len = rot13[row_index][column_index].length
#       puts "\tCoordinate [#{coord}] points to an #{rot13[row_index][column_index].class} of length #{inner_len}"
      
#       inner_index = 0 
#       while inner_index < inner_len do
#         puts "\t\t (#{coord}, #{inner_index}) is: #{rot13[row_index][column_index][inner_index]}"
#         inner_index += 1 
#       end
      
#       column_index += 1 
#     end
    
#     row_index += 1
#   end
#   inner_index
# end

  

  
#{rot13[row_index]} \n[element_index]

# "Jaws\nClose Encounters of the Third Kind\nRaiders of the Lost Ark\nE.T. the Extra-terrestrial\nSchindler's List\nLincoln\n"

  
  
  
#   row_index = 0
# while row_index < rot13.length do
# element_index = 0
# while element_index < rot13[row_index].length do
#   puts  "Jaws\nClose Encounters of the Third Kind\nRaiders of the Lost Ark\nE.T. the Extra-terrestrial\nSchindler's List\nLincoln\n"
#   element_index += 1
# end
# row_index += 1
# end #=> nil
# end 