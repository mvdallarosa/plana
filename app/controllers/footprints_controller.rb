class FootprintsController < ApplicationController
  def show
    if !current_user.footprint
      redirect_to intro_path
    else
      @footprint = current_user.footprint
    end
  end

end
