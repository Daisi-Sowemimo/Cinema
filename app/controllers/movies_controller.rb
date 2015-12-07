class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movies_path, notice: "Success" if @movie.save
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :status,
                                    :plot, :genre,
                                    :cover_image,
                                    :runtime)
    end
end
