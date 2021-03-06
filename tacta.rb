
#Contacts List

contacts = []

contacts << { name: "Thomas Jefferson", phone: "+1 206 310 1369" , email: "tjeff@us.gov"       }
contacts << { name: "Charles Darwen"  , phone: "+44 20 7123 4567", email: "darles@evolve.org"  }
contacts << { name: "Nikola Tesla"    , phone: "+385 43 987 3355", email: "nik@inductlabs.com" }
contacts << { name: "Genghis Khan"    , phone: "+976 2 194 2222" , email: "contact@empire.com" }
contacts << { name: "Malcom X"        , phone: "+1 310 155 8822" , email: "x@theroost.org"     }

def index( contacts )
   contacts.each_with_index do |contact, i|
      puts "#{i+1}) #{contact[:name]}"
   end
end

def show( contact )
   puts "#{contact[:name]}"
   puts "phone: #{contact[:phone]}"
   puts "email: #{contact[:email]}"
end

def ask( prompt )
   print prompt
   gets.chomp
end

index(contacts)

puts
print "Who would you like to see? "
response = gets.chomp

i = response.to_i

contact = contacts[i-1]

puts
show(contact)
