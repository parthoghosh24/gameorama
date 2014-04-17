class ReviewsController < ApplicationController
  
   before_action :signed_in_user

  def new
     newReview = Review.create(game_id: params[:reviewGame][:gameId], user_id: params[:reviewGame][:userId], score: params[:reviewGame][:score].to_i, body: params[:reviewGame][:body])

      if newReview.save
        flash.now[:success]='Review Successfully posted!' 
     else
        flash.now[:error]='Something bad happened! Please try again' 
     end
      
     redirect_to current_user
  end

  def signed_in_user
      redirect_to root_url, notice: "Please sign in." unless signed_in? && current_user
 end
end
