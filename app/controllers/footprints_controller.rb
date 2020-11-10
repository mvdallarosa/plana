class FootprintsController < ApplicationController
  def show
    @footprint = current_user.footprint
  end

end
