class RecipesController < ApplicationController
before_action :set_recipe, only: [:edit, :update]

  def edit
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def show

  end

private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredient_ids[])
  end

  def set_recipe
    @recipe = Recipe.find(params[id])
  end

end
