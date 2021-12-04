class PasswordResetsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_later
    end
    redirect_to root_path, notice: "如帳號存在，將發送密碼重設信，請至信箱確認"      

  end

end
