class TypeEfficaciesController < ProtectedController
  before_action :set_type_efficacy, only: [:show, :update, :destroy]

  # GET /type_efficacies
  # GET /type_efficacies.json
  def index
    @type_efficacies = TypeEfficacy.all

    render json: @type_efficacies
  end

  # GET /type_efficacies/1
  # GET /type_efficacies/1.json
  def show
    render json: @type_efficacy
  end

  # POST /type_efficacies
  # POST /type_efficacies.json
  def create
    @type_efficacy = TypeEfficacy.new(type_efficacy_params)

    if @type_efficacy.save
      render json: @type_efficacy, status: :created, location: @type_efficacy
    else
      render json: @type_efficacy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /type_efficacies/1
  # PATCH/PUT /type_efficacies/1.json
  def update
    @type_efficacy = TypeEfficacy.find(params[:id])

    if @type_efficacy.update(type_efficacy_params)
      head :no_content
    else
      render json: @type_efficacy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /type_efficacies/1
  # DELETE /type_efficacies/1.json
  def destroy
    @type_efficacy.destroy

    head :no_content
  end

  private

  def set_type_efficacy
    @type_efficacy = TypeEfficacy.find(params[:id])
  end

  def type_efficacy_params
    params.require(:type_efficacy).permit(:damage_type_id, :target_type_id, :damage_factor)
  end
end
