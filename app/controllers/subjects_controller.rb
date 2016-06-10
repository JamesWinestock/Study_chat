class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end

  def create
    @user = current_user
    @profile = @user.profile
    if params[:profile]
      @profile.subjects.build(subject_params).save
      flash[:notice] = "Added subject"
      redirect_to profile_path(@user)
    end
  end

  private
  def subject_params
    params.require(:subject).permit(:name, :description)
  end
end
