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
def interactive_menu
  student =[]
  loop do
  #print the menu and ask the user what to do
  puts "1. Input the student"
  puts "2. Show the students"
  puts "9. Exit"
  #read the input and save to a variable
  selection = gets.chomp
  #do what the user has asked
  case selection
    when "1"
      student = input_student
    when "2"
      print_header
      print(student)
      print_footer(student)
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
  end
end



#nothing happens untill we call this method
#nothing happens in the code till this point
interactive_menu
