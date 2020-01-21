class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    
  end
  
  def activate
    student = Student.find(params[:id])
    student.active = true
    redirect_to "students/#{student.id}/show"
  end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
end