class AvisosController < ApplicationController
  before_action :set_aviso, only: [:show, :edit, :update, :destroy]

  # GET /avisos
  # GET /avisos.json
  def index

      @avisos = Aviso.order("fecha DESC").page(params[:page]).per(15)
      if params[:term]
        palabra= "%#{params[:term]}%"
        @avisos = Aviso.where("nombre LIKE ?",palabra).order("fecha DESC").page(params[:page]).per(15)
      end

  end

  # GET /avisos/1
  # GET /avisos/1.json
  def show
  end

  # GET /avisos/new
  def new
    @aviso = Aviso.new
  end
  def contactar
    @aviso = Aviso.find(params[:id])
    @aviso.estado="Contactado"
    @aviso.user= current_user.email
    @aviso.usersede= current_user.sede
    @aviso.fonouser=current_user.red_movil
    @aviso.save
    @evaluacionaviso = Evaluacionaviso.new
    @evaluacionaviso.f = @current_user.sede
    @evaluacionaviso.g= @current_user.sexo
    @evaluacionaviso.d= "Contactado"
    @evaluacionaviso.m=  DateTime.now + 1.days
    @evaluacionaviso.save
    ContactoMailer.copia(@aviso).deliver
    CopiaMailer.contacto(@aviso).deliver
    redirect_to avisos_path
  end
  # GET /avisos/1/edit
  def edit
  end

  # POST /avisos
  # POST /avisos.json

  def create

    @aviso = current_user.avisos.new(aviso_params)
    respond_to do |format|
      if @aviso.save
        @evaluacionaviso = Evaluacionaviso.new
        @evaluacionaviso_id = @aviso_id
        @evaluacionaviso.a = @aviso.nombre
        @evaluacionaviso.b = @aviso.user
        @evaluacionaviso.c = @aviso.usersede
        @evaluacionaviso.h= @current_user.sexo
        @evaluacionaviso.e = @current_user.email
        @evaluacionaviso.i = nil
        @evaluacionaviso.j= nil
        @evaluacionaviso.k = nil
        @evaluacionaviso.save

        format.html { redirect_to misavisos_path, notice: 'Aviso was successfully created.' }
        format.json { render :show, status: :created, location: @aviso }
      else
        format.html { render :new }
        format.json { render json: avisos_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avisos/1
  # PATCH/PUT /avisos/1.json
  def update
    respond_to do |format|
      if @aviso.update(aviso_params)
        format.html { redirect_to avisos_path, notice: 'Aviso was successfully updated.' }
        format.json { render :show, status: :ok, location: @aviso }
      else
        format.html { render :edit }
        format.json { render json: @aviso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avisos/1
  # DELETE /avisos/1.json
  def destroy
    @aviso.destroy
    respond_to do |format|
      format.html { redirect_to avisos_url, notice: 'Aviso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aviso
      @aviso = Aviso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aviso_params
      params.require(:aviso).permit(:nombre,:estado,:user_id, :descripcion, :fecha, :user, :fonouser, :usersede)
    end
end
