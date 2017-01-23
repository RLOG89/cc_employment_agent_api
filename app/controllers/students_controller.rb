class StudentController < ApplicationController

  before_action :authenticate_user!

  def index
    render json: Student.all
  end

  def create 
    student = Student.create( student_params )
    render json: student, status: :created
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  private
  def student_params
    params.require(:student).permit([:first_name, :last_name, :profile])
  end

end