class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    
  end
  
  def activate
    set_student.active = true
    redirect "#{set_student.id}"
  end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
end