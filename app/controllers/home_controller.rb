class HomeController < ApplicationController
  include HomeHelper

  def index
    @users = User.all.order(created_at: :desc)
    @user = current_user
    @daily_quote = INSPIRATION.sample
  end
end
