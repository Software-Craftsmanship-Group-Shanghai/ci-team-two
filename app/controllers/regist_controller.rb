class RegistController < ApplicationController
  def regist
  end

  def do_regist
    token = Base64.encode64(params[:email] + params[:password] + Time.now.to_s) 
    user = User.new(email: params[:email], password: params[:password], register_token: token)
    user.save!
  end
end