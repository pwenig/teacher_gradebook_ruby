class StudentsController < ApplicationController

  def index
    students = Student.all
    @students = students.sort_by { |k| k["name"] }
    find_minimum_grade
    find_maximum_grade
    find_average_grade
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      set_student_status
      redirect_to root_path
    end
  end

  respond_to :json

  def update
    @student = Student.find params[:id]
    respond_to do |format|
      if @student.update_attributes(student_params)
        format.json { respond_with_bip(@student) }
        set_student_status
      else
      end
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to root_path
  end


  private

  def student_params
    params.require(:student).permit(:name, :grade)
  end

  def find_minimum_grade
    @minimum_grade = Student.find_min
  end

  def find_maximum_grade
    @maximum_grade = Student.find_max
  end

  def find_average_grade
    @average_grade = Student.find_average.round(2)
  end

  def set_student_status
    Student.set_status
  end

end