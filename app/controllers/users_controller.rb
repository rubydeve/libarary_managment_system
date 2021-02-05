class UsersController < ApplicationController

def index
	
end

def new
	@user = User.new
end

def create
	@user =User.new(new_params)
	if @user.save
		redirect_to welcome_url
	    else 
		 	render :new
    end
end

def signup

	
end

def user_signup
 	@already = User.find_by_email(params[:user][:email])
			if 	@already.blank?
		     
		       @user =User.new(new_params)
		       if @user.save
		       	sign_in :user, @user
		       	redirect_to dashboards_url
		       else
		       	 	render :signup
		       end
		   else
		   	puts"====================", params.inspect
		   	render :signup
		   end
end

def user_signin
  
  @user  = User.find_by_email(params[:user][:email])
  if !@user.blank?
    if @user.valid_password?(params[:user][:password])
      sign_in :user, @user
      redirect_to dashboards_url
    else
    end
  else

  end

end

def signout
 sign_out current_user  if current_user
 redirect_to root_url

end

private

   def new_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
   end

end

