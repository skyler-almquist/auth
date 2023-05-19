class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    @current_user = User.find_by({ "id" => session["user_id"] })
    puts "----- this code runs at the beginning of the request"
  end
end
