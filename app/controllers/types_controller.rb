class TypesController < ApplicationController

  def index
    types = Type.joins(items: :restaurant).where('restaurants.name = ?', restaurant_name).distinct
    render json: types, status: 200
  end

  private

  def restaurant_name
    request.headers['restaurant'].to_s
  end

end
