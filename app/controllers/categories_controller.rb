class CategoriesController < ApplicationController
  # def index
  #   @categories = Category.all

  def index
    @categories = Category.all

  end

  # end

  def show
    @category = Category.find(params[:id])
    @items = Item.where(category: @category)
    @favorite = Favorite.new
    # @items = @category.items
    # @category = Category.where(name: 'plant-based recipes')
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @items = @items.where(sql_query, query: "%#{params[:query]}%")
    end

    if params[:per_page].present?
      @items_p = @items.page(params[:page]).per(params[:per_page])
    else
      @items_p = @items.page(params[:page])
    end

  end
end
