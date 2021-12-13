class ConferenciaController < Api::V1::ApiController
  before_action :set_conferencia, only: [:show]
  def index 
    @conferencias = Conferencia
  end

  def show  
   render json: @conferencia 
  end

  def create
  
    @conferencia = conferencia.new
  
    if @conferencia.save
  
      render json: @conferencia, status: :created
  
    else
  
      render json: @conferencia.errors, status: :unprocessable_entity
  
    end

  end
  
  private
  
  # Use callbacks to share common setup or constraints between actions.

  def set_conferencia

    @conferencia = Conferencia.find(params[:id])

  end

  # Only allow a trusted parameter "white list" through.

  def conferencia_params

    params.require(:conferencia).permit(:name)

  end

end