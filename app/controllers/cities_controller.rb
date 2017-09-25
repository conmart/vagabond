class CitiesController < ApplicationController
  def show
    @city = City.find_by_id(params[:id])
    last_city(@city)
    @posts = @city.posts
    @posts = @posts.order(created_at: :desc)
  end
end
