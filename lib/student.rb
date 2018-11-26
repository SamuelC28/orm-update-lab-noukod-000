require_relative "../config/environment.rb"

class Student


  attr_accessor :name, :grade
  attr_reader :id

  def initialize(id=nil, name, grade)
    @id = id
    @name = name
    @grade = grade
  end
  def create_table
    sql = <<-SQL
      INSERT INTO songs (id, name, album)
      VALUES (?, ?)
    SQL

    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]
  end


end
