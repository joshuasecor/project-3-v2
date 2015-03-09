class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    if current_user != nil && current_user.is_admin == true
    @user = User.find(params[:id])
    else
      redirect_to '/home'
    end
  end

  def edit
    if current_user != nil && current_user.is_admin == true
      @user = User.find(params[:id])
    else
      redirect_to '/home'
    end
  end

  def create
    user = User.new(user_params)
    user.is_admin = false
    if user.save
      session["user_id"] = user.id.to_s
      redirect_to '/home'
    else
      flash[:alert] = "Email is already in use."
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path
    else
      redirect_to '/home'
    end
  end 

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/home'
  end

  private
  def user_params
   params.require(:user).permit(:email, :password, :password_confirmation, :photo)
  end

end
