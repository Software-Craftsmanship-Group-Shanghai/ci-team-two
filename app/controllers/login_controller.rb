class LoginController < ApplicationController
  def login
    if User.user_login(params[:email], params[:password])
      render text: "Login Success"
    else
      @login_message = "Username/Password invalid!"
      render "welcome/index"
    end
  end
end