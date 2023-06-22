class DocumentaryFilmsController < ApplicationController
  def index
    @documentales = DocumentaryFilm.all
  end

  def new
    @documental = DocumentaryFilm.new
  end
  
  def create
    @documental = DocumentaryFilm.new(documental_params)
    if @documental.save
      redirect_to documentary_films_index_path
    else
      render :new
    end
  end

  private
  
  def documental_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end

end
