class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    
  end
  
  def activate
    set_student.active = true
    redirect "students/#{set_student.id}/show"
  end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
end