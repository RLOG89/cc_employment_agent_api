class EmployersController < ApplicationController

  before_action :authenticate_user!

  def index
    render json: Employer.all
  end

end