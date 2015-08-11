# -*- coding: utf-8 -*-

recipe_data_file_path = './recipe-data.txt'
recipe_file = open(recipe_data_file_path)
RECIPE_ID_START_VALUE = 1

recipe_id = RECIPE_ID_START_VALUE
recipe_file.each_line do |line|
  puts "#{recipe_id}: #{line}"
  recipe_id += 1
end
