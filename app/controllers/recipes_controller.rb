class RecipesController < ApplicationController
before_action :set_recipe, only: [:edit, :update]

  def edit
  end

  def new
    @recipe = Recipe.new
  end

private

  def recipe_params
    params.require(:recipe).permit(:name)
  end

  def set_recipe
    @recipe = Recipe.find(params[id])
  end

end
