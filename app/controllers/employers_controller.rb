class EmployersController < ApplicationController

  # before_action :authenticate_user!

  def index
    render json: Employer.all
  end

<<<<<<< HEAD
  def show
    @employer = Employer.find(params[:id])
    # send_file @Employer.document.path, :type => @document.document_content_type, :disposition => 'inline'
    render json: @employer.logo.url
  end

  def create
    employer = Employer.create(employer_params)
    render json: employer
  end

  def employer_params
    params.require( :employer ).permit( :company_name, :company_website, :contact_details, :address, :no_previous_students_hired, :notes, :business_type, :logo )
  end

end
=======
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
>>>>>>> develop
