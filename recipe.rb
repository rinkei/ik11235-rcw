# -*- coding: utf-8 -*-

recipe_data_file_path = './recipe-data.txt'
recipe_file = open(recipe_data_file_path)

recipe_file.each_line do |line|
  puts line
end
