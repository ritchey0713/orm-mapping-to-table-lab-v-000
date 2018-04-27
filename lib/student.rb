class Student
 #  with DB[:conn]  
 
 attr_accessor :name, :grade, :id 
 
 def initialize(name, grade, id = nil)
  @name = name 
  @grade = grade 
  @id = id 
end 

end
