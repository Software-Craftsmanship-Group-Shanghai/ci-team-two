class WelcomeController < ApplicationController
  def index
    @time = Time.now
    @query = params[:username]
  end
end