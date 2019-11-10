#let's putss list of all students into an array
=begin
students =[
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex Delarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueguer", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baretheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
=end
def input_student
  puts "Please enter the names of the students"
  puts "To finish, press enter twice"
  #create empty array
  student = []
  #gets first name
  name = gets.chomp
  #while code is not emoty, repeat code
  while !name.empty? do
    #add name to the array as a hash
    student << {name: name, cohort: :november}
    puts "Now we have #{student.count} students"
    #get another name from input
    name = gets.chomp
  end
  #return the student array
  student
end
def print_header
  puts "Welcome to Villian academy"
  puts "__________________________"
end
def print(names)
  names.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(names)
  puts "Overall we have #{names.count} great students"
end
#nothing happens untill we call this method
students = input_student
#nothing happens in the code till this point
print_header
print(students)
print_footer(students)
