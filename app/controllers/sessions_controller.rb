class SessionsController < ApplicationController
  def new
    redirect_to root_path, notice: "Ya estas logueado" if session[:user_id]
  end

  def create
    user = User.where(email: params[:email], password: params[:password]).first
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "Login correcto."
    else
      redirect_to new_session_path, alert: "Email o contraseña incorrecto."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice: "Usuario deslogueado."
  end
end
