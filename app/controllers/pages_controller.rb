class PagesController < ApplicationController
   skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = current_user
  end

  def ranking
    @users = User.all
  end

  def dashboard
    #@challenge = User.current_challenge
  end

  def welcome
  end

  def intro
  end

  def discover
  end
end
