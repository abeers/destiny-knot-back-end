class PokemonTypesController < ApplicationController
  before_action :set_pokemon_type, only: [:show, :update, :destroy]

  # GET /pokemon_types
  # GET /pokemon_types.json
  def index
    @pokemon_types = PokemonType.all

    render json: @pokemon_types
  end

  # GET /pokemon_types/1
  # GET /pokemon_types/1.json
  def show
    render json: @pokemon_type
  end

  # POST /pokemon_types
  # POST /pokemon_types.json
  def create
    @pokemon_type = PokemonType.new(pokemon_type_params)

    if @pokemon_type.save
      render json: @pokemon_type, status: :created, location: @pokemon_type
    else
      render json: @pokemon_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemon_types/1
  # PATCH/PUT /pokemon_types/1.json
  def update
    if @pokemon_type.update(pokemon_type_params)
      head :no_content
    else
      render json: @pokemon_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemon_types/1
  # DELETE /pokemon_types/1.json
  def destroy
    @pokemon_type.destroy

    head :no_content
  end

  private

  def set_pokemon_type
    @pokemon_type = PokemonType.find(params[:id])
  end

  def pokemon_type_params
    params.require(:pokemon_type).permit(:pokemon_id, :type_id, :slot)
  end
end
