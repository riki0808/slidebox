class PasswordResetsController < ApplicationController
  skip_before_action :require_login

  def new

  end

  def create
    @user = User.find_by_email(params[:email])
    if @user
      @user.deliver_reset_password_instructions!
    else
      return  redirect_to(new_password_reset_path, :notice => 'This email is not correct')
    end
    return redirect_to(root_path, :notice => 'Instructions have been sent to your email.')
  end
    
  def edit
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])

    if @user.blank?
      not_authenticated
      return
    end
    # binding.pry
  end
      
  
  def update
    @token = params[:id]
    @user = User.load_from_reset_password_token(params[:id])

    if @user.blank?
      not_authenticated
      return
    end


    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.change_password!(params[:user][:password])
      redirect_to(root_path, :notice => 'Password was successfully updated.')
    else
      render :action => "edit"
    end
  end
end
