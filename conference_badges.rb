#git commit -m "done"
#git push

def badger_make(name)
  puts "Hello, my name is #{name}."
end

def batch_badge_creator(list)
  if list.length != 0
    list.each do |name|
      badger_make(name)
    end
  else
    puts "No one wants to speak in this conference! LOL!"
  end
end

def assign_rooms(list, room = 7)
  if list.length != 0
    list.each_with_index do |name, i|
      if i < 7
        puts "Hello, #{name}! You'll be assigned to room #{i+1}!"
      end
    end
    if list.length > room
      puts "\n***********************************************************\nYou have #{list.length - room} extra speakers not assigned to #{room} available rooms.\n***********************************************************\n"
    end
  else
    puts "No one wants to speak in this conference! LOL!"
  end
end

def printer(list)
  if list.length != 0
    batch_badge_creator(list)
    assign_rooms(list)
  else
    puts "NO ONE CAME TO SPEAK! SOWWIE!"
  end
end


#############################
#          TESTS            #
#############################

#test #badger_make(name)
puts "Testing for #badger_make(name)"
print "['sung']: "
badger_make("sung")
print "['HA']: "
badger_make("HA")
puts "\n\n"


#Test #batch_badge_creator(list)
puts "Test for #batch_badge_creator(list)"
print '["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]: '
batch_badge_creator(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])
print '["Edsger"]: '
batch_badge_creator(["Edsger"])
print '[]: '
batch_badge_creator([])
puts "\n\n"


#Test #assign_rooms(list)
puts "Test #assign_rooms(list)"
print '["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz", "DONT PRINT", "DONT PRINT"]: '
assign_rooms(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz", "DONT PRINT", "DONT PRINT"])
print "['Edsgar']: "
assign_rooms(["Edsger"])
print "[]: "
assign_rooms([])
puts "\n\n"


#Tests #printer(list)
puts "Test #printer(list)"
print '["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz",  "DONT PRINT", "DONT PRINT"]: '
printer(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz",  "DONT PRINT", "DONT PRINT"])
print '["sung"]: '
printer(["sung"])
print "[]: "
printer([])
  

  