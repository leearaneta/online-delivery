class ItemsController < ApplicationController

  def index
    items = Item.where(restaurant: Restaurant.first)
    render json: items, status: 200
  end

end
