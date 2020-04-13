class EncuestadonadosController < ApplicationController
  before_action :set_encuestadonado, only: [:show, :edit, :update, :destroy]


  # GET /encuestadonados
  # GET /encuestadonados.json
  def index
    @encuestadonados = Encuestadonado.all
  end

  # GET /encuestadonados/1
  # GET /encuestadonados/1.json
  def show
  end

  # GET /encuestadonados/new
  def new
    @encuestadonado = Encuestadonado.new
  end

  # GET /encuestadonados/1/edit
  def edit
  end

  # POST /encuestadonados
  # POST /encuestadonados.json
  def create
    @encuestadonado = Encuestadonado.new(encuestadonado_params)

    respond_to do |format|
      if @encuestadonado.save
        format.html { redirect_to @encuestadonado, notice: 'Encuestadonado was successfully created.' }
        format.json { render :show, status: :created, location: @encuestadonado }
      else
        format.html { render :new }
        format.json { render json: @encuestadonado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encuestadonados/1
  # PATCH/PUT /encuestadonados/1.json
  def update
    respond_to do |format|
      if @encuestadonado.update(encuestadonado_params)
        format.html { redirect_to @encuestadonado, notice: 'Encuestadonado was successfully updated.' }
        format.json { render :show, status: :ok, location: @encuestadonado }
      else
        format.html { render :edit }
        format.json { render json: @encuestadonado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encuestadonados/1
  # DELETE /encuestadonados/1.json
  def destroy
    @encuestadonado.destroy
    respond_to do |format|
      format.html { redirect_to encuestadonados_url, notice: 'Encuestadonado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encuestadonado
      @encuestadonado = Encuestadonado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encuestadonado_params
      params.require(:encuestadonado).permit(:nombredon,:nombresol, :categoria, :iddon, :emaildon, :sededon, :carreradon, :sexo, :notasol, :publicacion, :nompro, :res, :notapro, :estadopro, :real, :horapedido)
    end
end
