class EncuestasolicitantesController < ApplicationController
  before_action :set_encuestasolicitante, only: [:show, :edit, :update, :destroy]

  # GET /encuestasolicitantes
  # GET /encuestasolicitantes.json
  def index
    @encuestasolicitantes = Encuestasolicitante.all
  end

  # GET /encuestasolicitantes/1
  # GET /encuestasolicitantes/1.json
  def show
  end

  # GET /encuestasolicitantes/new
  def new
    @encuestasolicitante = Encuestasolicitante.new
  end

  # GET /encuestasolicitantes/1/edit
  def edit
  end

  # POST /encuestasolicitantes
  # POST /encuestasolicitantes.json
  def create
    @encuestasolicitante = Encuestasolicitante.new(encuestasolicitante_params)

    respond_to do |format|
      if @encuestasolicitante.save
        format.html { redirect_to @encuestasolicitante, notice: 'Encuestasolicitante was successfully created.' }
        format.json { render :show, status: :created, location: @encuestasolicitante }
      else
        format.html { render :new }
        format.json { render json: @encuestasolicitante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encuestasolicitantes/1
  # PATCH/PUT /encuestasolicitantes/1.json
  def update
    respond_to do |format|
      if @encuestasolicitante.update(encuestasolicitante_params)
        format.html { redirect_to @encuestasolicitante, notice: 'Encuestasolicitante was successfully updated.' }
        format.json { render :show, status: :ok, location: @encuestasolicitante }
      else
        format.html { render :edit }
        format.json { render json: @encuestasolicitante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encuestasolicitantes/1
  # DELETE /encuestasolicitantes/1.json
  def destroy
    @encuestasolicitante.destroy
    respond_to do |format|
      format.html { redirect_to encuestasolicitantes_url, notice: 'Encuestasolicitante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encuestasolicitante
      @encuestasolicitante = Encuestasolicitante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encuestasolicitante_params
      params.require(:encuestasolicitante).permit(:nombresol,:nombredon, :categoria, :idsol, :emailsol, :sedesol, :carrerasol, :sexo, :notadon, :publicacion, :nompro, :res, :notapro, :estadopro, :real, :horapedido)
    end
end
