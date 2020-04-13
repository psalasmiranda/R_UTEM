class PublicacionesController < ApplicationController

  def publicaciones
    @productos = Producto.all.order("horacreacion DESC").page(params[:page]).per(10)
  end
  def estadis

  end
  def misavisos
    @avisos= Aviso.all
  end
  def encuestaaviso
    @evaluacionavisos = Evaluacionaviso.all
  end
  def contactados
    @avisos= Aviso.all
    @evaluacionavisos = Evaluacionaviso.all
  end
  def pendientes
    @productos = Producto.where(estado: 'Pendiente').order("horacreacion ASC").page(params[:page]).per(10)
  end
  def estadisticos
  end
  def aprobados
    @productos = Producto.where(estado: 'Disponible').order("horaaprobacion DESC").page(params[:page]).per(10)
  end


  def reportados
        @productos = Producto.where(estado: 'REPORTADO').order("horaaprobacion DESC").page(params[:page]).per(10)
  end
  def encuestasolicitante
    @encuestasolicitante=Encuestasolicitante.all
  end




  def encuestapedido
    @encuestadonado=Encuestadonado.all
  end
  def Vehiculos
        @productos = Producto.where(estado: "Disponible").where(categoria: 'Accesorios para Vehículos').order("horaaprobacion DESC").page(params[:page]).per(15)
        if params[:term]
          palabra= "%#{params[:term]}%"
          @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Accesorios para Vehículos').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
        end
  end
  def Libros

    @productos = Producto.where(estado: "Disponible").where(categoria: 'Libros').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Libros').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end
  end
  def MaterialEstudio
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Material de estudio').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Material de estudio').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end

  end
  def Vestuario
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Vestuario').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Vestuario').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end
  end
  def AccesorioBebe
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Juguetes y Bebés').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Juguetes y Bebés').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end

  end
  def DeporteFitness
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Deportes y Fitness').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Deportes y Fitness').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end

  end
  def Oficinas
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Oficina').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Oficina').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end

  end
  def Muebles
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Muebles').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Muebles').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end
  end
  def HogaryElectro
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Hogar y Electrodomesticos').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Hogar y Electrodomesticos').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end

  end
  def Herramientas
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Herramientas').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Herramientas').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end

  end
  def ArteyAntiguedad
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Arte y Antigüedades').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Arte y Antigüedades').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end

  end
  def Jardin
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Jardín').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Jardín').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end
  end
  def Otros
    @productos = Producto.where(estado: "Disponible").where(categoria: 'Otros').order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where("titulo LIKE ?",palabra).where(categoria: 'Otros').where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    end

  end

def solicitados
  @productos = Producto.where(estado: 'Solicitado').order("horasolicitud DESC").page(params[:page]).per(15)
end

def pedidos
  @productos = Producto.all.order("horasolicitud DESC").page(params[:page]).per(10)
end

  def rechazados
    @productos = Producto.where(estado: 'Rechazado').order("horaaprobacion DESC").page(params[:page]).per(15)
  end

  def Disponibles
    @productos = Producto.where(estado: 'Disponible').order("horaaprobacion DESC").page(params[:page]).per(15)
  end

  # GET /productos/1
  # GET /productos/1.json
  def show
  end

  # GET /productos/new
  def new
    @producto = Producto.new
  end

  # GET /productos/1/edit
  def edit
  end

  # POST /productos
  # POST /productos.json
  def create

    @producto = current_user.productos.new(producto_params)

    respond_to do |format|
      if @producto.save
        format.html { redirect_to @producto, notice: 'Producto was successfully created.' }
        format.json { render :show, status: :created, location: @producto }
      else
        format.html { render :new }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
    respond_to do |format|
      if @producto.update(producto_params)
        format.html { redirect_to @producto, notice: 'Producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def eliminar
    @producto= Producto.find(params[:id])
    @Producto.destroy
    redirect_to "/publicaciones"
  end
  def destroy
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to "http://localhost:3000/publicaciones", notice: 'Producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:nombre,:imagen,:titulo,:user_id ,:descripcion, :defecto, :categoria, :estado, :horacreacion, :horaaprobacion, :horasolicitud, :idadministrador, :idsolicitante)
    end

end
