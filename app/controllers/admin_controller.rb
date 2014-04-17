class AdminController < ApplicationController
   
  before_action :signed_in_user
 
  def index
  end

  def createUser
    newUser = User.create(name: params[:createUser][:name], email: params[:createUser][:email], password: params[:createUser][:password], password_confirmation: params[:createUser] [:password_confirmation], is_admin: 0, avatar: "http://s3.amazonaws.com/37assets/svn/765-default-avatar.png")

     if newUser.save
        flash.now[:success]='User Successfully created!' 
        render "index"
     else
        flash.now[:error]='Failed in creating user! Please try again' 
        render "index"
     end
     
  end

  def createGame
     newGame = Game.create(title: params[:createGame][:title], description: params[:createGame][:description], boxshot: params[:createGame][:boxshot])
     if newUser.save
        flash.now[:success]='Game Successfully created!' 
        render "index"
     else
        flash.now[:error]='Failed in creating game! Please try again' 
        render "index"
     end
  end

  def users
     @users= User.where(:is_admin => 0)
  end

  def games
  end

  def signed_in_user
      redirect_to root_url, notice: "Please sign in." unless signed_in?
 end
end
