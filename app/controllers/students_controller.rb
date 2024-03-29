class StudentsController < ApplicationController
	def index
    @students = Student.all
	end
  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to students_path
    else
      render :action => :edit
    end
  end
end
