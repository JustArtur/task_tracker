class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])
    if @user.blank?
      flash[:warning] = 'wrong password or email'
    elsif @user.password_digest == user_params[:password_digest]
      session[:user_id] = @user.id
      redirect_to user_path(@user.id), notice: 'Вы вошли на сайт'
    else
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password_digest)
  end
end
