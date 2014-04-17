class UsersController < ApplicationController

 before_action :signed_in_user
   
 def show
    Rails.logger.debug("debug:: current user id  #{current_user.id} and params id #{params[:id]}")  

    if params[:id].to_i == current_user.id # this way won't be visiting the other users
           favorites= Review.where(user_id: params[:id])
           if favorites
              favorites=favorites.paginate(:page => params[:favorites_page], :per_page => 5)
           end 
    
     
           @userProfileContent ={"user" => User.find(params[:id]), "discoveries" => Game.paginate(:page => params[:discovery_page], :per_page => 5), "favorites" => favorites} 
    else
       redirect_to current_user
    end
    
 end

 
 def signed_in_user
      redirect_to root_url, notice: "Please sign in." unless signed_in?
 end
end
