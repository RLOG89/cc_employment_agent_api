require 'rest_client'
require 'json'

class SlacksController < ApplicationController

  def index
      puts "receiving:" + slack_params.to_json
      response = RestClient.get(
        'https://abot-slack-bot.ngrok.io/jobs',
        slack_params.to_json,
        {content_type: :json, accept: :json}
      )
      render json: response, status: :created
    end

  def create
    puts "sending:" + slack_params.to_json
    response = RestClient.post(
      'https://abot-slack-bot.ngrok.io/jobs',
      slack_params.to_json,
      {content_type: :json, accept: :json}
    )
    render json: response, status: :created
  end

  private
  def slack_params
    params.require('slack')
  end

end
