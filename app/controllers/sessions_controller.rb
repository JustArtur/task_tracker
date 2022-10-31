class SessionsController < ApplicationController
  def new
  end

  def create
    user_session = params.require(:session)
    user = User.find_by(email: params[:email])
    if user.present? && user.password_digest == params[:user][:password_digest]
      user_session[user_id] = user.id
      redirect_to root_path, notice: 'Вы вошли на сайт'
    else

    end
  end
end
