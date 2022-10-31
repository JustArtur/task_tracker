class UsersController < ApplicationController
  has_secure_password

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: user_params[:email])
    if user.nil?
      user = User.new(user_params)
      if user.save
        flash[:success] = "Yoy are successfully registered!"
        redirect_to "users/#{user.id}"
      else
        flash[:warning] = "Something goes wrong, try later"
      end
    else
      flash[:warning] = "Wrong email or password"
      redirect_to '/login'
    end
  end

  private
  def user_params
     params.require(:user).permit(:email, :password_digest)
  end

end
