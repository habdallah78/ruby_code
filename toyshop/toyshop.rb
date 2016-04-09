require 'json'

def read_toys
   json = File.read( 'toys.json' )
   array = JSON.parse( json, { :symbolize_names => true } )
end

def write_toys( toys )
   File.open( "toys.json", "w" ) do |f|
      json = JSON.pretty_generate( toys )
      f.write( json  )
   end
end

def index(toys)
    toys.each_with_index do |toy, i|
    puts "#{i+1}) #{toy[:name]},    Price: $ #{toy [:price]}"
    end
end

def show (toy)
    puts "You chose: #{toy [:name]},    Price: $ #{toy [:price]}"
end

def ask (prompt)
    print prompt
    gets.chomp
end

def create_new
   toy = {}

   puts
   puts "Enter toy info:"

   toy[:name ] = ask "Name? "
   toy[:phone] = ask "Price? "
   toy[:email] = ask "quantity? "

   toy
end

def action_new( toys )
   toy = create_new

   toys << toy

   puts
   puts "New toy Added:"
   puts

   show( toy )
   puts
end

def action_show( toys, i )
   toy = toys[i-1]

   puts
   show( toy )
   puts
end

def action_delete( toys )
   puts
   response = ask "Delete which toy? "

   i = response.to_i

   puts
   puts "Toys for #{toys[i-1][:name]} deleted."

   toys.delete_at( i-1 )

   puts
end

def action_search( toys )
   puts
   pattern = ask "Search for? "
   puts

   toys.each do |toy|
      if toy[:name] =~ /\b#{pattern}/i
         show( toy )
         puts
      end
   end
end

def action_error
   puts
   puts "Sorry, I don't recognize that command."
   puts
end

loop do

  toys = read_toys

  index( toys )

  puts
  response = ask "Who would you like to see (n for new, d for delete, s for search, q to quit)? "

  break if response == "q"

  if response == "n"
     action_new( toys )
  elsif response == "d"
     action_delete( toys )
   elsif response == "s"
      action_search( toys )
  elsif response =~ /[0-9]+/
     action_show( toys, response.to_i )
  else
     action_error
  end
end


puts
puts "Bye!"
