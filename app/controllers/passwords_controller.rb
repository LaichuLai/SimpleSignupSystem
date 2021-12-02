class PasswordsController < ApplicationController
  before_action :require_user_logged_in!


  def edit
  end

  def update
    if Current.user.update(password_params)
      redirect_to root_path, notice: "密碼更新成功"

    else
      render :edit
    end
  end


  private
  
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end
