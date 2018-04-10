class RecipesController < ApplicationController
before_action :set_recipe, only: [:edit, :update]
before_action :get_ingredients, only: [:new, :edit]

  def index
    @recipes = Recipe.ll
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

  def edit
  end

private

  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [])
  end

  def set_recipe
    @recipe = Recipe.find(params[id])
  end

  def get_ingredients
    @ingredients = Ingredient.all
  end

end
