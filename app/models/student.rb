class Student < ActiveRecord::Base

  def self.find_min
    students = Student.all
    min_grade = students.map { |student| student[:grade] }.min
    min_grade
  end

  def self.find_max
    students = Student.all
    max_grade = students.map { |student| student[:grade] }.max
    max_grade
  end

  def self.find_average
    students = Student.all
    grades = students.map { |student| student[:grade] }
    average_grade = grades.inject{ |sum, el| sum + el }.to_f / grades.size
    average_grade
  end

  def self.set_status
    students = Student.all
    students.each do |student|
      if student.grade < 65
        student.update_attribute(:status, "red")
      else
        student.update_attribute(:status, "none")
      end
    end
  end

end