class MentorProfilesController < ApplicationController
  before_action :authenticate_user

  def index
    @mentorprofiles = MentorProfile.all
    render json: @mentorprofiles
  end
  
  
  def create
    @mentorprofile = MentorProfile.create(mentorprofileparams.merge(user_id: current_user.id))
    render json: @mentorprofile
  end
  
  def show
    @mentorprofile = MentorProfile.find_by(id: params[:id])
    render json: @mentorprofile
  end
  
  def destroy
  @mentorprofile.destroy
    head :no_content
  end

  private 
  def mentorprofileparams 
    params.require(:mentor_profile).permit(:category_id, :description, :active)
  end
end
