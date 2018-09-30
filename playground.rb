# def course(list, hot=nil)
#   puts "List of all math courses offered 2018-2019.\n\n"
#   list.each_with_index do |name, i|
#     if name == hot
#       highlight = " !!!!!!HOT!!!!!!"
#     end
#     puts "Course ##{i}: #{name}.#{highlight}"
#   end
#   puts "\n-----------END OF THE LIST---------------"
# end

def course(list, hot=nil)
  puts "List of all math courses offered 2018-2019.\n\n"
  i = 0
  while list.length > 0
    highlight = nil
    c = list.shift()
    if c == hot
       highlight = "  *THIS COURSE IT HAWWTTTT!"
    end
    
    puts "Course ##{i+1}: #{c}.#{highlight}"
    i += 1
  end
  puts "\n-----------END OF THE LIST---------------" 
end


math_class = ["Algebra", "Algebra II", "Geometry", "Trigonometry","Pre-calculus", "Statistics", "Calculus", "Linear Algebra", "Calculus II", "Differential Equations"]
advance = ["Honrs", "Accelerated", "AP", "IB", "Dual Enrollment"]

course(math_class, "Statistics")
  