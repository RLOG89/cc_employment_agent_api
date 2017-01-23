class JobsController < ApplicationController

  before_action :authenticate_user!

  def index
    render json: Job.all
  end

  def create 
    job = Job.create(job_params)
    render json: job, status: :created
  end

  def show
    job = Job.find(params[:id])
    render json: job
  end

  def update
    job = Job.update(params[:id], job_params)
    render json: job
  end

  private
  def job_params
    params.require(:job).permit([:company_name, :job_title, :salary_range_min, :salary_range_max, :application_closing_date, :application_process, :job_spec, :job_spec_filename])
  end

end