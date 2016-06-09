class LocationsController < ApplicationController

  def new
    @location = Location.new
  end

  def create
    @user = current_user
    @profile = current_user.profile
    if params[:profile]
      @profile.build_location(location_params).save
      flash[:notice] = "Success"
      redirect_to profile_path(@user)
    # elsif params[:teacher]
      #this is where you can add another model with another location
    else
      redirect_to root_path
    end
  end

  private

  def location_params
    params.require(:location).permit(:address, :suburb, :state, :country, :postcode)
  end
end
