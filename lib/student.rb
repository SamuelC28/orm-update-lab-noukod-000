require_relative "../config/environment.rb"

class Student


  attr_accessor :name, :grade
  attr_reader :id

  def initialize(id=nil, name, grade)
    @id = id
    @name = name
    @grade = grade
  end
  def self.create_table(row)
    # sql = <<-SQL
    #   INSERT INTO songs (id, name, album)
    #   VALUES (?, ?)
    # SQL

    new_student = self.new
    new_student.id = row[0]
    new_student.name = row[1]
    new_student.grade = row[2]
    new_student
    # DB[:conn].execute(sql, self.name, self.grade)
    # @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]
  end


end
