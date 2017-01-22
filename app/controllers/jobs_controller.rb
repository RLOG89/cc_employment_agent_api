class JobsController < ApplicationController

  before_action :authenticate_user!

  def create 
    job = Job.create( job_params )
    render json: job, status: :created
  end

  private
  def job_params
    params.require(:job).permit([:company_name, :job_title, :salary_range_min, :salary_range_max, :application_closing_date, :application_process])
  end

end