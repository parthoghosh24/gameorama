class UsersController < ApplicationController

 before_action :signed_in_user
   
 def show
    
    @userProfileContent ={"user" => User.find(params[:id]), "discoveries" => Game.paginate(:page => params[:page], :per_page => 5)}
 end

 def signed_in_user
      redirect_to root_url, notice: "Please sign in." unless signed_in?
 end
end
