class HomeController < ApplicationController
  def index
    flash[:notice]  = "Notice"
    flash[:success] = "Success"
    flash[:error]   = "Error"
    flash[:alert]   = "Alert"
  end
end
