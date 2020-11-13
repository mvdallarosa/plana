class CommitmentsController < ApplicationController
  def new
    @challenges = Challenge.all
    @commitment = Commitment.new
  end

  def create
    @user = current_user
    @commitment = Commitment.new(challenge_id: params[:commitment][:challenge].to_i)
    @commitment.user = current_user
    @commitment.start_date = Date.today
    @commitment.end_date = Date.today + 28
    @commitment.save
    redirect_to discover_path
  end
end
