class AdminController < ApplicationController
   
  before_action :signed_in_user
 
  def index
  end

  def createUser
    newUser = User.create(name: params[:createUser][:name], email: params[:createUser][:email], password: params[:createUser][:password], password_confirmation: params[:createUser] [:password_confirmation], is_admin: 0)
     if newUser.save
        flash.now[:success]='User Successfully created!' 
        render "index"
     else
        flash.now[:error]='Failed in creating user! Please try again' 
        render "index"
     end
     
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