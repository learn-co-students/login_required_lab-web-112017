class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name].to_s.empty?
      session[:name] = params[:name]
      render :welcome
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.delete :name
    redirect_to "/login"
  end

end
