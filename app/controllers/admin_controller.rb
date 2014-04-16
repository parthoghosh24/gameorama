class AdminController < ApplicationController
   
  before_action :signed_in_user
 
  def index
  end

  def createUser
  end

  def createGame
  end

  def users
  end

  def games
  end

  def signed_in_user
      redirect_to root_url, notice: "Please sign in." unless signed_in?
 end
end
