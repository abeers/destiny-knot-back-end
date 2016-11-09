class PokemonAbilitiesController < ProtectedController
  before_action :set_pokemon_ability, only: [:show, :update, :destroy]

  # GET /pokemon_abilities
  # GET /pokemon_abilities.json
  def index
    @pokemon_abilities = PokemonAbility.all

    render json: @pokemon_abilities
  end

  # GET /pokemon_abilities/1
  # GET /pokemon_abilities/1.json
  def show
    render json: @pokemon_ability
  end

  # POST /pokemon_abilities
  # POST /pokemon_abilities.json
  def create
    @pokemon_ability = PokemonAbility.new(pokemon_ability_params)

    if @pokemon_ability.save
      render json: @pokemon_ability, status: :created, location: @pokemon_ability
    else
      render json: @pokemon_ability.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemon_abilities/1
  # PATCH/PUT /pokemon_abilities/1.json
  def update
    @pokemon_ability = PokemonAbility.find(params[:id])

    if @pokemon_ability.update(pokemon_ability_params)
      head :no_content
    else
      render json: @pokemon_ability.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemon_abilities/1
  # DELETE /pokemon_abilities/1.json
  def destroy
    @pokemon_ability.destroy

    head :no_content
  end

  private

    def set_pokemon_ability
      @pokemon_ability = PokemonAbility.find(params[:id])
    end

    def pokemon_ability_params
      params.require(:pokemon_ability).permit(:pokemon_id, :ability_id, :is_hidden, :slot)
    end
end
