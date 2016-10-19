class CoursesController < ApplicationController

  def index
    courses = Restaurant.first.courses
    render json: courses, status: 200
  end

end
