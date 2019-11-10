#let's putss list of all students into an array
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
print_header
print(students)
print_footer(students)
