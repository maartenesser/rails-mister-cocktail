class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params["id"])
    @dose = Dose.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    if @cocktail
      redirect_to cocktails_path
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
