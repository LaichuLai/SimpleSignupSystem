class SessionsController < ApplicationController

  def destory
    session[:user_id] = nill
    redirect_to root_path, notice: "已成功登出"
  end
end
