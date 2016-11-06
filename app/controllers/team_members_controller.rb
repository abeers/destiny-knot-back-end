class TeamMembersController < ApplicationController
  before_action :set_team_member, only: [:show, :update, :destroy]

  # GET /team_members
  # GET /team_members.json
  def index
    @team_members = TeamMember.all

    render json: @team_members
  end

  # GET /team_members/1
  # GET /team_members/1.json
  def show
    render json: @team_member
  end

  # POST /team_members
  # POST /team_members.json
  def create
    @team_member = TeamMember.new(team_member_params)

    if @team_member.save
      render json: @team_member, status: :created, location: @team_member
    else
      render json: @team_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_members/1
  # PATCH/PUT /team_members/1.json
  def update
    if @team_member.update(team_member_params)
      head :no_content
    else
      render json: @team_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_members/1
  # DELETE /team_members/1.json
  def destroy
    @team_member.destroy

    head :no_content
  end

  private

  def set_team_member
    @team_member = TeamMember.find(params[:id])
  end

  def team_member_params
    params.require(:team_member).permit(:team_id, :pokemon_id)
  end
end
