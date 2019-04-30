class MentorshipsController < ApplicationController
  before_action :authenticate_user

  def index
      @mentorships = Mentorship.where(mentor_id: current_user.id)
      render json: @mentorships
  end
  
  
  def create
    @mentorships = Mentorship.create(mentorshipsparams)
    render json: @mentorships
  end
  
  def show
    @mentorships = Mentorship.find_by(id: params[:id])
    render json: @mentorships
  end
  
  def destroy
  @mentorships.destroy
    head :no_content
  end

  private 
  def mentorshipsparams 
    params.require(:mentorships).permit(:category_id, :mentor_id, :mentee_id, :status)
  end
end