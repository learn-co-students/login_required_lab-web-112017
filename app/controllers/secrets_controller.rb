class SecretsController < ApplicationController
  before_action :require_login

  def show
    @user = current_user
  end

  private
  def require_login
    redirect_to login_path if !current_user
  end


end
