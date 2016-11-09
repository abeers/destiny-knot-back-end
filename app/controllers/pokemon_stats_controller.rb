class PokemonStatsController < ProtectedController
  before_action :set_pokemon_stat, only: [:show, :update, :destroy]

  # GET /pokemon_stats
  # GET /pokemon_stats.json
  def index
    @pokemon_stats = PokemonStat.all

    render json: @pokemon_stats
  end

  # GET /pokemon_stats/1
  # GET /pokemon_stats/1.json
  def show
    render json: @pokemon_stat
  end

  # POST /pokemon_stats
  # POST /pokemon_stats.json
  def create
    @pokemon_stat = PokemonStat.new(pokemon_stat_params)

    if @pokemon_stat.save
      render json: @pokemon_stat, status: :created, location: @pokemon_stat
    else
      render json: @pokemon_stat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pokemon_stats/1
  # PATCH/PUT /pokemon_stats/1.json
  def update
    if @pokemon_stat.update(pokemon_stat_params)
      head :no_content
    else
      render json: @pokemon_stat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemon_stats/1
  # DELETE /pokemon_stats/1.json
  def destroy
    @pokemon_stat.destroy

    head :no_content
  end

  private

  def set_pokemon_stat
    @pokemon_stat = PokemonStat.find(params[:id])
  end

  def pokemon_stat_params
    params.require(:pokemon_stat).permit(:pokemon_id, :stat_id, :base_stat, :effort)
  end
end
