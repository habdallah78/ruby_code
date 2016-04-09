
def crunchy_chicken_salad_ingredients

  ingredients = {
    "butter" => 3,"sugar" => 1,"oil" => 1, "pepper" => 1,"chicken" => 2
  }
    puts "Here is the list of ingredients you need:"

  ingredients.each do |ingredient, amount|
    puts "you need #{amount} #{ingredient}."
  end
end
#

crunchy_chicken_salad_ingredients

=begin

=end


def cooking_steps

  cooking_steps = {}

    puts "Here is the list of ingredients you need:"

  ingredients.each do |ingredient, amount|
    puts "you need #{amount} #{ingredient}."
  end
end





ingredients = [
  { "name" => "potatoes", "quantity" => "3 pieces" },
  { "name" => "eggs", "quantity" => "6 eggs" },
  { "name" => "paprikas", "quantity" => "5 spoons" },
  { "name" => "salt", "quantity" => "1 spoon" },
]

ingredients[0]["name"]

ingredients.each do |ingredient|
  puts "You need #{ingredient["quantity"]} #{ingredient["name"]}"
end
