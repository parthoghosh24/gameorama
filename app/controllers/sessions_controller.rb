class SessionsController < ApplicationController
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
 
    Rails.logger.debug("debug:: incoming Email  #{params[:session][:email]}")
    Rails.logger.debug("debug:: incomingAdminVal before parsing #{params[:session][:myCheckbox]}")

    incomingAdminVal=params[:session][:myCheckbox].to_i
    session[:userMode]=incomingAdminVal # store user mode in session to distinguish between routing of admin and regular user
    Rails.logger.debug("debug:: incomingAdminVal #{incomingAdminVal}")

    if user && user.authenticate(params[:session][:password])
       
       if incomingAdminVal == 0 && user.is_admin == incomingAdminVal   # incoming selection is admin but the user is not admin!!!
          flash[:error]='Sorry! User is not a valid admin/merchant'
          redirect_to root_url
       elsif incomingAdminVal == 1
          sign_in user
          redirect_to user
       else
           sign_in user
           redirect_to controller: "admin", action: "index"  
       end
   
    else
       flash[:error]='Invalid email/password combination'
       redirect_to root_url
    end   
  end

  def destroy
      sign_out
      redirect_to root_url
  end

end
