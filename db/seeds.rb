require_relative('../models/student')
require('pry')

student1= Student.new({
  "first_name" => "David",
  "second_name" => "Scott",
  "house" => "Griffyndor",
  "age" => "132"
  })

student1.save()


# student1.find_id(student1[id])


binding.pry
