class CitiesController < ApplicationController
  def show
    @city = City.find_by_id(params[:id])
    @posts = @city.posts
    @posts = @posts.order(created_at: :desc)
    last_city(@city)
  end
end
