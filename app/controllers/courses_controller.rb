class CoursesController < ApplicationController

  def index
    courses = Restaurant.find_by(name: restaurant_name).courses
    render json: courses, status: 200
  end

  private

  def restaurant_name
    request.headers['restaurant'].to_s
  end

end
