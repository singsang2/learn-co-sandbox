students = ["Tanner", "Sultan", "will", "sung", "travis", "blair", "brian", "patrice", "trisha", "cory", "leelena", "wendy", "Ed", "megan", "Joy", "valerie"]

def students_pair(students)
  i = 1
  while students.length > 1
    pairs = [" "," "]
    number = rand(students.length)
    pairs[0] = students[number]
    students.delete_at(number)
    
    number = rand(students.length)
    pairs[1] = students[number]
    students.delete_at(number)
    puts "Group##{i}: #{pairs[0]} and #{pairs[1]}"
    i+=1
  end
end

students_pair(students)