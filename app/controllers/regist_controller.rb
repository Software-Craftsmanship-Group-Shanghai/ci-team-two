class RegistController < ApplicationController
  def regist
  end

  def do_regist
    user = User.new(email: params[:email], password: params[:password])
    user.save!
  end
end