class EvaluacionavisosController < ApplicationController
  before_action :set_evaluacionaviso, only: [:show, :edit, :update, :destroy]

  # GET /evaluacionavisos
  # GET /evaluacionavisos.json
  def index
    @evaluacionavisos = Evaluacionaviso.all
  end
  
  # GET /evaluacionavisos/1
  # GET /evaluacionavisos/1.json
  def show
  end

  # GET /evaluacionavisos/new
  def new
    @evaluacionaviso = Evaluacionaviso.new
  end

  # GET /evaluacionavisos/1/edit
  def edit
  end

  # POST /evaluacionavisos
  # POST /evaluacionavisos.json
  def create
    @evaluacionaviso = Evaluacionaviso.new(evaluacionaviso_params)

    respond_to do |format|
      if @evaluacionaviso.save
        format.html { redirect_to @evaluacionaviso, notice: 'Evaluacionaviso was successfully created.' }
        format.json { render :show, status: :created, location: @evaluacionaviso }
      else
        format.html { render :new }
        format.json { render json: @evaluacionaviso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluacionavisos/1
  # PATCH/PUT /evaluacionavisos/1.json
  def update
    respond_to do |format|
      if @evaluacionaviso.update(evaluacionaviso_params)
        format.html { redirect_to @evaluacionaviso, notice: 'Evaluacionaviso was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluacionaviso }
      else
        format.html { render :edit }
        format.json { render json: @evaluacionaviso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluacionavisos/1
  # DELETE /evaluacionavisos/1.json
  def destroy
    @evaluacionaviso.destroy
    respond_to do |format|
      format.html { redirect_to evaluacionavisos_url, notice: 'Evaluacionaviso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluacionaviso
      @evaluacionaviso = Evaluacionaviso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluacionaviso_params
      params.require(:evaluacionaviso).permit(:a, :b, :c, :d, :e, :f)
    end
end
