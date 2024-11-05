class DirectorsController < ApplicationController
  def index
    @directors = Director.all.order(:name)
  end

  def show
    @director = Director.find(params[:id])
    @movies = @director.movies.order(year: :desc)
  end

  def youngest
    @youngest_director = Director.where.not(dob: nil).order(dob: :desc).first
  end

  def eldest
    @eldest_director = Director.where.not(dob: nil).order(dob: :asc).first
  end
end
