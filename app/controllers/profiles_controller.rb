class ProfilesController < ApplicationController
  def index
  end

  def show
    @profile = Profile.find(params[:id])
    @user = @profile.user
    @location = @profile.location
  end


  def edit
    @user = current_user
    @profile = @user.profile
  end

  def new
    @profile = Profile.new
    @user = current_user
  end

  def update
    if @profile = current_user.profile
      @profile.update(profile_params)
      flash[:notice] = "Success"
      redirect_to profile_path(@profile)
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
