class RelationshipsController < ApplicationController
  def follow_user
    @relationship = Follow.new(user_id: current_user.id, following_id: params['user_id'].to_i)
    if @relationship.save!
      redirect_back
    end
  end

  def unfollow_user
    @relationship = Follow.where(user_id: current_user.id, following_id: params['user_id'].to_i).first
    if @relationship.destroy
      redirect_back
    end
  end

end
