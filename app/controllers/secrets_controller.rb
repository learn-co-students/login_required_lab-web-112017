class SecretsController < ApplicationController
  before_action :require_login

    def show

    end

    def index
    end

    def create
      @secret = Secret.create()
    end

    def require_login
        redirect_to login_path unless session.include? :name

     end
end
