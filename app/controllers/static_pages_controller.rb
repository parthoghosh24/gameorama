class StaticPagesController < ApplicationController
  def home
    if signed_in?
      if session[:userMode] == 0
         redirect_to admin_dashboard_url
      else
         redirect_to current_user
      end
    end     
  end

  def help
  end

  def about
  end

  def contact
  end

  def news
  end
  
end
