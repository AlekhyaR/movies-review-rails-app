class MoviesController < ApplicationController
  def index
    if params[:search]
      @movies = Movie.where('actor LIKE ?', "%#{params[:search]}%")
    elsif params[:stars]
      @movies = Movie.joins(:reviews).order("reviews.stars DESC")
    else
      @movies = Movie.all
    end
  end

  def show
    @movies = Movie.find(params[:id])
  end
end