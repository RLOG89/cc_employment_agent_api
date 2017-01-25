require 'rest_client'

class SlacksController < ApplicationController

  def index
    RestClient.post 'https://abot-slack-bot.ngrok.io/jobs', "Hello Alex" 
    render json: "this worked!"
  end

  def create
    var url = 'https://abot-slack-bot.ngrok.io/jobs'
    RestClient.post url, slack_params.to_json, {content_type: :json}
    render json: "testing testing"

  end

  private
  def slack_params
    params.require(:slack).permit(:data)
  end

end
