#let's putss list of all students into an array
students =[
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex Delarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueguer",
  "The Joker",
  "Joffrey Baretheon",
  "Norman Bates"
]
def print_header
  puts "Welcome to Villian academy"
  puts "__________________________"
end
def print(names)
  names.each do |name|
    puts name
  end
end
def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
