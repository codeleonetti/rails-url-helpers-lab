class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
   # @student = Student.find(params[:id])
  end

  def activate
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
      @student.save
    
  end

  private

    def set_student
      @student.activate ||= "false"
    end
end