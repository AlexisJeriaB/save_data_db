class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def new
    @serie = Serie.new
  end
  
  def create
    @serie = Serie.new(series_params)

    if @serie.save
      redirect_to series_index_path
    else
       render :new
    end
  end

  private
  
  def series_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
