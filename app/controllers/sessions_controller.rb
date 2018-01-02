class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && params[:name].length > 0
      session[:name] = params[:name]
      render :show
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
