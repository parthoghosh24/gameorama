class UsersController < ApplicationController

 before_action :signed_in_user
   
 def show
    @user = User.find(params[:id])
 end

 def signed_in_user
      redirect_to root_url, notice: "Please sign in." unless signed_in?
 end
end
