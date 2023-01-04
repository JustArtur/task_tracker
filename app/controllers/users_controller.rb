class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: user_params[:email])
    if user.nil?
      user = User.new(user_params)
      if user.save
        # flash[:success] = "Yoy are successfully registered!"
        session[:user_id] = user.id
        redirect_to "/users/#{user.id}", notice: 'Пользователь зарегестрирован, войдите на сайт!'
      else
        # flash[:warning] = "Something goes wrong, try later"
      end
    else
      # flash[:warning] = "Wrong email or password"
      redirect_to new_sessions_path, notice: 'Пользовутель c таким email уже существует!'
    end
  end

  def show
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :second_name)
  end
end
