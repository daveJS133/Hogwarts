require_relative('../db/sql_runner')
require('pry')

class Student

  attr_reader( :first_name, :last_name, :house, :age, :id )

  def initialize( options )
    @id = nil || options['id'].to_i
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house = options['house']
    @age = options['age'].to_i
  end

  def save()
    sql = "INSERT INTO students ( first_name, second_name, house, age) VALUES ('#{ @first_name}', '#{@second_name}', '#{@house}', #{@age})
    RETURNING *"
    student_data = SqlRunner.run( sql )
    @id = student_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run( sql )
    return students.map{ |student| Student.new(student) }
  end

  def self.find_id(id)
    sql = "SELECT * FROM students WHERE id = #{id}; "
    student = SqlRunner.run(sql)[0]
    return Student.new( student )
  end  

end

