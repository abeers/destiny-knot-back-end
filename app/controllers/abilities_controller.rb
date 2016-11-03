class AbilitiesController < ApplicationController
  before_action :set_ability, only: [:show, :update, :destroy]

  # GET /abilities
  # GET /abilities.json
  def index
    @abilities = Ability.all

    render json: @abilities
  end

  # GET /abilities/1
  # GET /abilities/1.json
  def show
    render json: @ability
  end

  # POST /abilities
  # POST /abilities.json
  def create
    @ability = Ability.new(ability_params)

    if @ability.save
      render json: @ability, status: :created, location: @ability
    else
      render json: @ability.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /abilities/1
  # PATCH/PUT /abilities/1.json
  def update
    if @ability.update(ability_params)
      head :no_content
    else
      render json: @ability.errors, status: :unprocessable_entity
    end
  end

  # DELETE /abilities/1
  # DELETE /abilities/1.json
  def destroy
    @ability.destroy

    head :no_content
  end

  private

  def set_ability
    @ability = Ability.find(params[:id])
  end

  def ability_params
    params.require(:ability).permit(:identifier, :generation_id, :is_main_series)
  end
end
