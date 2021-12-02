class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "已成功登入！"
    else
      flash[:alert] = "帳號或密碼有誤"
      render :new
    end
  end

  def destory
    session[:user_id] = nil
    redirect_to root_path, notice: "已成功登出"
  end
end
