class AuthtestController < ApplicationController

  def index
    user_logged_in = current_user != nil ? true : false
    render json: user_logged_in
  end

end
