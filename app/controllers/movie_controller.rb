class MovieController < ApplicationController
  def index 
    movie = Movie.all
    render json: movie.as_json
  end

  def show
    the_id = params[:id]
    movie = Moive.find_by(id: the_id)
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      Director: params[:input_director] || movie.director
      Language: params[:input_Language] || movie.Langue
    )
    movie.save
    render json: movie.as_json
  end

  def update
    the_id = params[:id]
    movie = Movie.find_by(id: the_id)
    movie.director = params[:input_Director]
    movie.language = params[:input_Language]
    movie.save
    render json: movie.as_json
  end
  
  def destroy
  the_id = params[:id]
  movie = Movie.find_by(id: the_id)
  movie.destroy
  render json: movie.as_json
  end

end
