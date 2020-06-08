class BeersController < ApplicationController
  def index 
    @beers = Beer.all 
    render json: @beers 
  end 

  def show
    @beer = Beer.find(params[:id])
    render json: @beer, include: [:brewery]
  end

  def create
    @beer = Beer.create(
      name: params[:name],
      abv: params[:abv],
      type_of_beer: params[:type_of_beer],
      brewery_id: params[:brewery_id]
    )
    render json: @beer
  end 
end
