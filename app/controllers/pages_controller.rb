class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :welcome ]

  def home
  end

  def profile
    @user = current_user
  end

  def ranking
    @users = User.order(score: :desc)
  end

  def edit
    @user = current_user
    @challenge = current_user.commitments.last.challenge
    @user.done = Hash.new
  end

  def update
    @user = current_user
    @user.done["#{Date.today}"] = params[:user][:done]["#{Date.today}"]
    @user.save
    raise
  end

  def welcome
  end

  def intro
  end

  def discover
  end

  private

  def user_params
    params.require(:user).permit( :done )
  end
end
