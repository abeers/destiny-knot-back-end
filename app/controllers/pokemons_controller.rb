class PokemonsController < ProtectedController
  skip_before_action :authenticate, only: [:index, :show]
  before_action :set_pokemon, only: [:show, :update, :destroy]

  # GET /pokemons
  # GET /pokemons.json
  def index
    if params[:identifier]
      @pokemons = Pokemon.where(identifier: params[:identifier])
    else
      @pokemons = Pokemon.all
    end

    render json: @pokemons
  end

  # GET /pokemons/1
  # GET /pokemons/1.json
  def show
    render json: @pokemon
  end

  # POST /pokemons
  # POST /pokemons.json
  def create
    @pokemon = Pokemon.new(pokemon_params)

    if @pokemon.save
      render json: @pokemon, status: :created, location: @pokemon
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemons/1
  # PATCH/PUT /pokemons/1.json
  def update
    if @pokemon.update(pokemon_params)
      head :no_content
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemons/1
  # DELETE /pokemons/1.json
  def destroy
    @pokemon.destroy

    head :no_content
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
    params.require(:pokemon).permit(:identifier, :species_id, :height, :weight, :base_experience, :order, :is_default)
  end
end
