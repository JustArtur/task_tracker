class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user = User.new(user_params)
      if user.save(validate: false)
        session[:user_id] = user.id
        redirect_to "/users/#{user.id}", notice = "Yoy are successfully registered!"
      else
        flash.alert = "Something goes wrong, try later"
      end
    else
      flash.notice = user.errors.full_messages
    end
  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password_confirmation, :password, :first_name, :second_name)
  end
end
