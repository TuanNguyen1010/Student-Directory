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
# and then print them
puts "Welcome to Villian academy"
puts "__________________________"
students.each do |names|
  puts names
end
# printing number of students
puts "Overall we have #{students.count} great students"
