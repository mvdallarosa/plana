class QuestionnaireController < ApplicationController

  def edit
    @user = current_user
    @user.form = Hash.new
  end


  def update
    @user = current_user
    @user.form = params[:user][:form]
    @user.save
    redirect_to footprint_path
  end

  private

  def user_params
    params.require(:user).permit( :form )
  end

end
