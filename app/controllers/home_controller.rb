class HomeController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
    @user = current_user
  end
end
