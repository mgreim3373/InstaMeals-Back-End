class RecipesController < OpenReadController
  before_action :set_recipe, only: [:update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  # GET /recipes/1
  def show
    render json: Recipe.find(params[:id])
  end

  # POST /recipes
  def create
    @recipe = current_user.recipes.build(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy

    head :no_content
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = current_user.recipes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:prep_time, :user_id, :cook_time, :serving_size, :pot_mode, :pot_pressure, :ingredient, :prep_instruction)
    end

      private :set_recipe, :recipe_params
end
