class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/index" })
  end

  def show
    the_id = params.fetch("the_id")
    @the_movie = Movie.find(the_id)
    render({ :template => "movie_templates/show" })
  end
end
