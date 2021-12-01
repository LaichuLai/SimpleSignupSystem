class MainController < ApplicationController

  def index
    flash.now[:notice] = "登入成功！"
    flash.now[:alert] = "無效的帳號或密碼"
  end

end
