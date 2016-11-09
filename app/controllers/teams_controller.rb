class TeamsController < ProtectedController
  skip_before_action :authenticate, only: [:index, :show]
  before_action :set_team, only: [:show]
  before_action :set_user_team, only: [:update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all

    render json: @teams
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    render json: @team
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = current_user.teams.build(team_params)

    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    if @team.update(team_params)
      head :no_content
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy

    head :no_content
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def set_user_team
    @team = current_user.teams.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name)
  end
end
