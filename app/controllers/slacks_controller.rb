require 'rest_client'
require 'json'

class SlacksController < ApplicationController

  def index
    RestClient.post 'https://abot-slack-bot.ngrok.io/jobs', "Hello Alex" 
    render json: "this worked!"
  end

  def create
    url = 'https://abot-slack-bot.ngrok.io/jobs'
    # RestClient.post url, slack_params.to_json, {content_type: :json}
    # RestClient::Request.execute(
    #   method: :post,
    #   url: url,
    #   content_type: :json,
    #   payload: { test: "this is a test" }.to_json
    # )
  #   RestClient::Request.execute(method: :post,
  #                              url: url,
  #                              payload: slack_params.to_json,
  #                              headers: {"Content-Type" => "application/json"}
  #                             )
  #   render json: "testing testing"
  # end
  RestClient.post 'https://abot-slack-bot.ngrok.io/jobs',  {
   company_name: "FanDuel",
   job_title: "Junior Developer",
   salary_range_min: 22000,
   salary_range_max: 22000,
   application_closing_date: "2017-02-10",
   application_process: "Apply direct via their website"
  }.to_json, {content_type: :json, accept: :json}
end

  private
  def slack_params
    params.require(:slack).permit(:data)
  end

end
