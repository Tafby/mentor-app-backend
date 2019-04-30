class MentorshipsController < ApplicationController
  before_action :authenticate_user
  before_action :set_mentorship, only: [:show, :update, :destroy]

  def index
      @mentorships = Mentorship.where(mentor_id: current_user.id)
      render json: @mentorships
  end
  
  
  def create
    @mentorships = Mentorship.create(mentorship_params.merge(mentee_id: current_user.id, status: "Pending"))
    render json: @mentorships
  end
  
  def show
    render json: @mentorship
  end

  def update
    if @mentorship.update_attributes(mentorship_params)
      render json: @mentorship, status: :ok
    else
      render json: @mentorship.errors, status: :unprocessable_entity
    end
  end
  
  def destroy
    @mentorship.destroy
    head :no_content
  end


  private 

  def set_mentorship
    @mentorship = Mentorship.find(params[:id])
  end

  def mentorship_params
    params.require(:mentorships).permit(:category_id, :mentor_id, :status)
  end
end