class RecipesController < ApplicationController

  def edit

  end

  def new

  end

private

  def recipe_params
    params.require(:recipe).permit(:name)
  end

end
