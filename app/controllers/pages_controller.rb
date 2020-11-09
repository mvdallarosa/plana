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
    if @user.done == nil
      @user.done = Hash.new
    end
  end

  def update
    @user = current_user
    if @user.done == nil
      @user.done = Hash.new
    end
    @user.done["#{Date.today}"] = params[:user][:done]["#{Date.today}"]
    @user.save
  end

  def welcome
  end

  def intro
  end

  def discover
  end

  def tripcalculator

  end

  private

  def user_params
    params.require(:user).permit( :done )
  end
end
