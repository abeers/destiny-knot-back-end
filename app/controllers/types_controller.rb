class TypesController < ProtectedController
  skip_before_action :authenticate, only: [:index, :show]
  before_action :set_type, only: [:show, :update, :destroy]

  # GET /types
  # GET /types.json
  def index
    @types = Type.all

    render json: @types
  end

  # GET /types/1
  # GET /types/1.json
  def show
    render json: @type
  end

  # POST /types
  # POST /types.json
  def create
    @type = Type.new(type_params)

    if @type.save
      render json: @type, status: :created, location: @type
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /types/1
  # PATCH/PUT /types/1.json
  def update
    if @type.update(type_params)
      head :no_content
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /types/1
  # DELETE /types/1.json
  def destroy
    @type.destroy

    head :no_content
  end

  private

  def set_type
    @type = Type.find(params[:id])
  end

  def type_params
    params.require(:type).permit(:identifier, :generation_id, :damage_class_id)
  end
end
