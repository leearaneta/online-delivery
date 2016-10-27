class ItemsController < ApplicationController

  def index
    items = Item.where(restaurant: Restaurant.find_by(name: restaurant_name))
    render json: items, status: 200
  end

  private

  def restaurant_name
    request.headers['restaurant'].to_s
  end

end
