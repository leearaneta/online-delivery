class RestaurantsController < ApplicationController

  def check_delivery_zone
   render json: find_restaurants(address_params), status: 200
  end

  private

  def address_params
   @address = params.require(:address)
  end

 def find_restaurants(address_params)
   matrix = GoogleDistanceMatrix::Matrix.new
   matrix.origins << GoogleDistanceMatrix::Place.new(address: address_params)
   destinations.each {|destination| matrix.destinations << destination}
   available_restaurants(matrix)
 end

 def available_restaurants(matrix)
   matrix.data.flatten.each_with_index.map do |datum, idx|
     if Restaurant.all[idx].max_distance > datum.distance_in_meters/2000.to_f
       Restaurant.all[idx]
     end
   end.compact
 end

 def destinations
   Restaurant.all.map do |restaurant|
     restaurant.full_address
   end.map do |location|
     GoogleDistanceMatrix::Place.new(address: location)
   end
 end
end
