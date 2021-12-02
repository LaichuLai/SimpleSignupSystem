class RegistrationController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    #param
    # =>{"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"送出"}
    #param[:user]
    # =>{"email"=>"", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "註冊成功！"
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end
