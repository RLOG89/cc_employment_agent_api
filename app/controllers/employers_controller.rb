class EmployersController < ApplicationController

  before_action :authenticate_user!

  def index
    render json: Employer.all
  end

  def create 
    employer = Employer.create( employer_params )
    render json: employer, status: :created
  end

  def show
    employer = Employer.find(params[:id])
    render json: employer
  end

  private
  def employer_params
    params.require(:employer).permit([:company_name, :company_website, :contact_details, :company_logo_url, :business_type, :address, :no_previous_students_hired, :notes])
  end

end