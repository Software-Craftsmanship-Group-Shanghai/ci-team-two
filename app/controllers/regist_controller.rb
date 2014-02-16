class RegistController < ApplicationController
  def regist
  end

  def do_regist
    token = Base64.encode64(params[:email] + params[:password] + Time.now.to_s) 
    user = User.new(email: params[:email], password: params[:password], register_token: token)
    user.save!
  end

  def do_confirm
     user = User.find_by_register_token(params[:token])

     if user.nil?
      render text:"token error, invalid confirmation"
     else
      user.register_confirmed = true
      user.register_token = nil
      user.save!
      render text:"token ok, the user regist success"
     end 
  end  
end