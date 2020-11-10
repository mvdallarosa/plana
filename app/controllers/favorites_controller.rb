class FavoritesController < ApplicationController
  before_action :find_item
  def show
  end
  def create
    @favorite = Favorite.new(user_id: current_user.id, item_id: params[:item_id])
    @category = @favorite.item.category
    @items = Item.where(category: @category)
    @favorite.save
    respond_to do |format|
      format.js { render template: 'favorites/update_favorite_index' }
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @category = @favorite.item.category
    @items = Item.where(category: @category)
    @favorite.destroy
    respond_to do |format|
      format.js { render template: 'favorites/update_favorite_index' }
    end
  end

  private
  def find_item
    @item = Item.find(params[:item_id])
  end
end
