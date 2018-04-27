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
      CREATE TABLE IF NOT EXISTS students (
      id PRIMARY KEY INTEGER, 
      name TEXT, 
      grade TEXT
      ) 
      SQL
      DB[:conn].execute(sql)
  end 
  
  def self.drop_table 
    sql = <<-SQL 
      DROP TABLE IF EXISTS students
      SQL
    DB[:conn].execute(sql)
  end
  
  def self.save 
    sql = <<-SQL
      INSERT IN students (name, grades)
      VALUES (?,?)
    SQL
    
    db[:conn].execute(sql, student.name, student.grade)  
  end 
    
  

end
