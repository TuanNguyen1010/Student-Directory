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
@student = []
def input_student
  puts "Please enter the names of the students"
  puts "To finish, press enter twice"
  #create empty array
  #gets first name
  name = STDIN.gets.chomp
  #while code is not emoty, repeat code
  while !name.empty? do
    #add name to the array as a hash
    @student << {name: name, cohort: :november}
    puts "Now we have #{@student.count} students"
    #get another name from input
    name = STDIN.gets.chomp
  end
  #return the student array
end
def print_header
  puts "Welcome to Villian academy"
  puts "__________________________"
end
def print
  @student.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer
  puts "Overall we have #{@student.count} great students"
end
def print_menu
  #print the menu and ask the user what to do
  puts "1. Input the student"
  puts "2. Show the students"
  puts "3. Save the list to student.csv"
  puts "4. Load list from student.csv"
  puts "9. Exit"
end
def show_student
  print_header
  print
  print_footer
end
def process(selection)
  case selection
    when "1"
      input_student
    when "2"
      show_student
    when "3"
      save_students
    when "4"
      load_file
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
  end
end
def interactive_menu
  loop do
  print_menu
  process(STDIN.gets.chomp)
  end
end
def save_students
  file = File.open("students.csv", "w")
  @student.each do |names|
    student_data = [names[:name], names[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end
def load_file(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(",")
    @student << {name: name, cohort: cohort.to_sym}
  end
  file.close
end
def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exist?(filename)
    load_file(filename)
    puts "Loaded #{@student.count} from #{filename}"
  else
    puts "Sorry #{filename} doesn't exist"
    exit
  end
end

#nothing happens untill we call this method
#nothing happens in the code till this point
try_load_students
interactive_menu
