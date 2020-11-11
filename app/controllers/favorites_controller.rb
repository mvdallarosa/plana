class FavoritesController < ApplicationController
  before_action :find_item

  def show
  end
  def create
    @favorite = Favorite.new(user_id: current_user.id, item_id: params[:item_id])
    @category = @favorite.item.category
    @items = Item.where(category: @category)
    @item = Item.where(category: Category.where(name: 'plant-based recipes'))[Date.today.month]
    @favorite.save
    respond_to do |format|
      if params[:page] == 'category'
        format.js { render template: 'favorites/update_items_index' }
      elsif params[:page] == 'dashboard'
        format.js { render template: 'favorites/update_item_card' }
      end
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @category = @favorite.item.category
    @items = Item.where(category: @category)
    @item = Item.where(category: Category.where(name: 'plant-based recipes'))[Date.today.month]
    @favorite.destroy
    respond_to do |format|
      if params[:page] == 'category'
        format.js { render template: 'favorites/update_items_index' }
      elsif params[:page] == 'dashboard'
        format.js { render template: 'favorites/update_item_card' }
      end
    end
  end

  private
  def find_item
    @item = Item.find(params[:item_id])
  end
end
