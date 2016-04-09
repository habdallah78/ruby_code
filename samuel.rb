def create_actions
 actions = {}
 actions["1"] = "Show ingredients"
 actions["2"] = "Cut veggies and meat"
 actions["3"] = "Cook rice"
 actions["4"] = "Cook meat en veggies"
 actions["5"] = "Mix everything together"
 actions["6"] = "Bake the eggs"
 actions["7"] = "Eat Nasi"
 actions["8"] = "Exit"
 return actions
end

@actions = create_actions

def show_ingredients
 ingredients = {}
 ingredients["Rice"] = "300 grams"
 ingredients["Chicken Breast"] = "300 grams"
 ingredients["Veggies"] = "400 grams"
 ingredients["Eggs"] = 4
 return ingredients
end

@ingredients = show_ingredients

def cut_veggie_meat
 meat = @ingredients["Chicken Breast"]
 veggies = @ingredients["Veggies"]
 puts "Cut #{meat} Chicken Breats"
 puts "Cut #{veggies} Veggies"
 user_action
end

def cook_rice
 rice_cooking_steps = []
 rice_cooking_steps << "Take 300 grams of rice."
 rice_cooking_steps << "Put the rice in a cup."
 rice_cooking_steps << "Put the rice in a pan."
 rice_cooking_steps << "Put exact the same amout of water in the pan."
 rice_cooking_steps << "Add oil."
 rice_cooking_steps << "Boil the rice until ther is no water left"
 rice_cooking_steps << "Let the rice dry out for 10 minutes"
 # return rice_cooking_steps
end

@rice_cooking_steps = cook_rice

def cook_meat_veggies
 cook_meat_veggies_steps = []
 cook_meat_veggies_steps << "Put oil in a frying pan."
 cook_meat_veggies_steps << "Heat the pan until it's hot enough."
 cook_meat_veggies_steps << "Put the Chicken Breast into the pan fry it until the inside is white."
 cook_meat_veggies_steps << "Put the veggies in the frying pan."
 cook_meat_veggies_steps << "Let the meat and veggies cook for 5 minutes"
 # return cook_meat_veggies
end

@cook_meat_veggies_steps = cook_meat_veggies

def put_everything_together
 put_everything_together_steps = []
 put_everything_together_steps << "Get the rice out of the pan."
 put_everything_together_steps << "Mix the rice with the meat and veggies"
end

@put_everything_together_steps = put_everything_together

def bake_the_eggs
 bake_the_eggs_steps = []
 bake_the_eggs_steps << "Put oil into a cooking pan and heat the pan."
 bake_the_eggs_steps << "Break the eggs."
 bake_the_eggs_steps << "When the oil is hot enouhg put the eggs into the pan."
 bake_the_eggs_steps << "After 1 minute turn the omelet."
 bake_the_eggs_steps << "Turn the omlets round and round until it's done"
end

@bake_the_eggs = bake_the_eggs

def eat_nasi
 puts "Eet smakelijk!"
end

def user_action
 puts "What do you want to do?"
 @actions.each do |number, activity|
   puts " #{number} - #{activity}."
 end
 action = gets.chomp.to_i

 if action == 1
   @ingredients.each do |name, amount|
     puts "#{amount} #{name}."
   end
   user_action

 elsif action == 2
   cut_veggie_meat

 elsif action == 3
   index = 1
   @rice_cooking_steps.each do |step|
     puts "#{index}. #{step}"
     index += 1
   end
   user_action

 elsif action == 4
   index = 1
   @cook_meat_veggies_steps.each do |step|
     puts "#{index}. #{step}"
     index += 1
   end
   user_action

 elsif action == 5
   index = 1
   @put_everything_together_steps.each do |step|
     puts "#{index}. #{step}"
     index += 1
   end
 user_action

 elsif action == 6
   index = 1
   @bake_the_eggs.each do |step|
     puts "#{index}. #{step}"
     index += 1
   end
 user_action

 elsif action == 7
   eat_nasi
 user_action

 else
   puts "Hasta la vista!"
 end

end


user_action
