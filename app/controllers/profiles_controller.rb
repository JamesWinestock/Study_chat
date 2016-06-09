class ProfilesController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @profile = @user.profile
    @location = @profile.location
  end

  def new
    @user = current_user
    @profile = @user.profile
  end

  def edit
    @user = current_user
    @profile = @user.profile
  end

  def update
    @user = current_user
    if @profile = current_user.profile
      @profile.update(profile_params)
      flash[:notice] = "Success"
      redirect_to profile_path(@user)
    else
      flash.now[:notice] = "Something went wrong :("
      render :edit
    end
  end

  def create
  end

  private

  def profile_params
    params.require(:profile).permit(:bio, :user_id, :image, location_attributes: [:address, :suburb, :state, :country, :postcode])
  end
end
