class MoviesController < ApplicationController
def index
	   @movies = Movie.released
	end
def show 
	@movie=Movie.find(params[:id])
end
def edit 
	@movie=Movie.find(params[:id])
end



def image_for(movie)
  if movie.image_file_name.blank?
    image_tag('placeholder.png')
  else
    image_tag(movie.image_file_name)
  end
end

def update
	  @movie = Movie.find(params[:id])
   @movie.update(movie_params)
   redirect_to @movie
end
def new
  @movie = Movie.new
end
def create
    @movie = Movie.new(movie_params)
  @movie.save
  redirect_to @movie
end

def destroy
  @movie=Movie.find(params[:id])
  @movie.destroy
  redirect_to movies_url
end


private

  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross, :cast, :director, :duration, :image_file_name)
  end




end