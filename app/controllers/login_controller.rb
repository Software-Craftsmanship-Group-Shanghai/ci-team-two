class LoginController < ApplicationController
  def login
    if User.user_login(params[:email], params[:password])
      @login_message = "Login Success"
      render "welcome/index"
     # render text: "Login Success"
    else
      @login_message = "Username/Password invalid!"
      render "welcome/index"
    end
  end
end