
def show_inventory

  puts "Welcome to our store.

  Here's our Inventory:

   1. Cats
   2. Dogs
   3. Hamsters
   4. Elephants
   5. Turtles
   6. Leave the store

   What would you like to buy today:"

   choice = gets.chomp.to_i


  if choice == 6
      puts" Bye!"

    elsif choice == 1
      puts" You have choosen: Cats"

    elsif choice == 2
      puts" You have choosen: Dogs"

    elsif choice == 3
      puts" You have choosen: Hamsters"

    elsif choice == 4
      puts" You have choosen: Elephants"

  else
    puts "You have chosen Turtles. Add this to your cart?"

    choice = gets.chomp.downcase

    if choice == "yes"
      puts "A hamster has been added to your Cart."

    else
      puts " You can check the other available items"
      show_inventory
    end
  end
end

show_inventory
