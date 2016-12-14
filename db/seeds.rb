require_relative('../models/student')

student1= Student.new({
  "first_name" => "David",
  "second_name" => "Scott",
  "house" => "Griffyndor",
  "age" => "132"
  })

student1.save()