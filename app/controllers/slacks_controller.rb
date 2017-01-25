require 'rest_client'

class SlacksController < ApplicationController

  def create
    puts "sending:" + slack_params.to_json
    response = RestClient.post(
      'https://abot-slack-bot.ngrok.io/jobs',
      slack_params.to_json,
      {content_type: :json, accept: :json}
    )
    render json: response

  end

  private
  def slack_params
    params.require('slack')
  end

end
