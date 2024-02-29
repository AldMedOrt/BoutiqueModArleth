class ComprobantesController < ApplicationController
  before_action :set_comprobante, only: %i[ show edit update destroy ]

  # GET /comprobantes or /comprobantes.json
  def index
    @comprobantes = Comprobante.all
  end

  # GET /comprobantes/1 or /comprobantes/1.json
  def show
  end

  # GET /comprobantes/new
  def new
    @comprobante = Comprobante.new
  end

  # GET /comprobantes/1/edit
  def edit
  end

  # POST /comprobantes or /comprobantes.json
  def create
    @comprobante = Comprobante.new(comprobante_params)

    respond_to do |format|
      if @comprobante.save
        format.html { redirect_to comprobante_url(@comprobante), notice: "Comprobante was successfully created." }
        format.json { render :show, status: :created, location: @comprobante }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comprobante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comprobantes/1 or /comprobantes/1.json
  def update
    respond_to do |format|
      if @comprobante.update(comprobante_params)
        format.html { redirect_to comprobante_url(@comprobante), notice: "Comprobante was successfully updated." }
        format.json { render :show, status: :ok, location: @comprobante }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comprobante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comprobantes/1 or /comprobantes/1.json
  def destroy
    @comprobante.destroy

    respond_to do |format|
      format.html { redirect_to comprobantes_url, notice: "Comprobante was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comprobante
      @comprobante = Comprobante.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comprobante_params
      params.require(:comprobante).permit(:tipo_comprobante, :precio_total_venta, :metodo_pago, :estado)
    end
end
