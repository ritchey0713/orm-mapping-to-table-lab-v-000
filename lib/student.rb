class Student
 #  with DB[:conn]  
 
   attr_accessor :name, :grade
   attr_reader :id
   
   def initialize(name, grade, id = nil)
    @name = name 
    @grade = grade 
    @id = id 
  end 
  
  def self.create_table 
    sql = <<-SQL
      CREATE TABLE students (
      id PRIMARY KEY INTEGER, 
      name TEXT, 
      grade TEXT
      ) 
      SQL
      DB[:conn].execute(sql)
  end 
  
  def self.drop_table 
    sql = <<-SQL 
      DROP TABLE students
      SQL
    DB[:conn].execute(sql)
  end
  
  def self.save 
    sql = <<-SQL
      INSERT IN students (name, grades)
      VALUES (?,?)
    SQL
  DB[:conn].execute(sql, student.name, student.grade)  
  end
  
  def self.create(name:, grade:)
    student = Student.new(name, grade)
    student.save
    student 
  end 
    
    
  

end
