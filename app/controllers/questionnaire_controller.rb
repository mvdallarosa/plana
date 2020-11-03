class QuestionnaireController < ApplicationController

  def edit
    @user = current_user
    @user.form = Hash.new
  end


  def update
    @user = current_user
    @user.form = params[:user][:form]
    # @user.form[:mobility1] = params[:mobility1]
    # @user.form[:mobility2] = params[:mobility2]
    # @user.form[:food1] = params[:food1]
    # @user.form[:food2] = params[:food2]
    # @user.form[:household1] = params[:household2]
    # @user.form[:household2] = params[:household2]
    # @user.form[:household3] = params[:household3]
    @user.save
  end

  private

  def user_params
    params.require(:user).permit( :form )
  end

end
