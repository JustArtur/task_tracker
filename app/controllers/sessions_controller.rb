class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.password_digest == params[:user][:password_digest]
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Вы вошли на сайт'
    else

    end
  end
end
