# -*- coding: utf-8 -*-

def output_id? output_recipe_id_array, target_id
  return true if output_recipe_id_array.nil?

  output_recipe_id_array.include?(target_id)
end


recipe_data_file_path = './recipe-data.txt'
recipe_file = open(recipe_data_file_path)

output_recipe_id = ARGV.map(&:to_i) if ARGV.size > 0
RECIPE_ID_START_VALUE = 1

recipe_id = RECIPE_ID_START_VALUE
recipe_file.each_line do |line|
  puts "#{recipe_id}: #{line}" if output_id?(output_recipe_id, recipe_id)
  recipe_id += 1
end
