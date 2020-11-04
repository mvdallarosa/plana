class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :welcome ]

  def home
  end

  def profile
    @user = current_user
  end

  def ranking
    @users = User.all
  end

  def dashboard
    @challenge = current_user.commitments.last.challenge
  end

  def welcome
  end

  def intro
  end

  def discover
  end
end
