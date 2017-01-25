require 'rest_client'

class SlacksController < ApplicationController

  def index
    RestClient.post 'https://abot-slack-bot.ngrok.io/jobs', "Hello Alex"
    render json: "this worked!"
  end

end
