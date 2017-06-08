# code here!

class School

  attr_accessor :roster, :school_name

  def initialize(test)
    @school_name = test
    @roster = Hash.new
  end

  def add_student(name, grade)
    if @roster[grade].class != Array
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end
  def sort

    @roster.map{|x, y| @roster[x] = @roster[x].sort}
    @roster
  end
end
