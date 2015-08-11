# -*- coding: utf-8 -*-

def output_id? output_recipe_id_array, target_id
  return true if output_recipe_id_array.nil?

  output_recipe_id_array.include?(target_id)
end


class Recipe
  attr_accessor :id, :name, :description

  def initialize(id, name)
    @id = id
    @name = name
    @description = ''
  end

  def output
    puts "[#{@id}] #{@name}"
    puts "せつめい:"
    puts @description
    puts ""
  end
end


recipe_data_file_path = './recipe-data.txt'
recipe_file = open(recipe_data_file_path)

output_recipe_id = ARGV.map(&:to_i) if ARGV.size > 0
RECIPE_ID_START_VALUE = 1

recipe_id = RECIPE_ID_START_VALUE

start_line_flag = true
recipe = nil

recipes = []
recipe_file.each_line do |line|
  if line.length <= 2
    # 空行なので保存して次のレシピへ
    recipes << recipe
    recipe = nil
    start_line_flag = true
    next

  else
    # レシピを読み込む
    start_line_flag = false

    if recipe
      # 既存のレシピがある
      recipe.description << line
    else
      # 新しいレシピ
      recipe = Recipe.new(recipe_id, line)
      recipe_id += 1
    end
  end
end

# 最後のレシピを保存
recipes << recipe

recipes.each do |recipe|
  recipe.output if output_id?(output_recipe_id, recipe.id)
end
