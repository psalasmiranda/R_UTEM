class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy, :solicitar]
  before_action :authenticate_admin!, except: [:index, :show]
  # GET /productos
  # GET /productos.json
  def index

    @productos = Producto.where(estado: "Disponible").order("horaaprobacion DESC").page(params[:page]).per(15)
    if params[:term]
      palabra= "%#{params[:term]}%"
      @productos = Producto.where(estado: "Disponible").where("titulo LIKE ?",palabra).order("horaaprobacion DESC").page(params[:page]).per(15)
    end
  end


  def informacion
  end

  def reporte
    @producto=Producto.find(params[:id])
    @user= User.find(@producto.user_id)
    @user.penalizar =1 + @user.penalizar
    @user.save
    redirect_to @producto

  end


  # GET /productos/1
  # GET /productos/1.json
  def show
  end
  def reportar
    @producto= Producto.find(params[:id])
    @producto.estado = "REPORTADO"
    @producto.save
  end
  def solicitar
    espacio = " "
    @producto= Producto.find(params[:id])
    @producto.idsolicitante= @current_user.id
    @producto.email= @current_user.email
    @producto.estado= 'Solicitado'
    @producto.horasolicitud= DateTime.now 
    @producto.save

    @current_user.cantidad = 1 + @current_user.cantidad
    @current_user.save
    @encuestasolicitante=Encuestasolicitante.find(params[:id])
    @encuestasolicitante.emailsol=@current_user.email
    @encuestasolicitante.idsol=@current_user.id
    @encuestasolicitante.sedesol=@current_user.sede
    @encuestasolicitante.carrerasol=@current_user.carrera
    @encuestasolicitante.sexo=@current_user.sexo
    @encuestasolicitante.categoria=@producto.categoria
    @encuestasolicitante.horapedido=@producto.horasolicitud
    @encuestasolicitante.publicacion=@producto.titulo
    @encuestasolicitante.estadopro="Solicitado"
    @encuestasolicitante.nompro=@producto.nombre
    @encuestasolicitante.nombresol=@current_user.nombre + espacio + @current_user.paterno + espacio + @current_user.materno

    @encuestasolicitante.save
    @encuestadonado=Encuestadonado.find(params[:id])

    @encuestadonado.nombresol=@current_user.nombre + espacio + @current_user.paterno + espacio + @current_user.materno
    @encuestadonado.estadopro="Solicitado"
    @encuestadonado.horapedido=@producto.horasolicitud + 1.days
    @encuestadonado.save


    SolicitarMailer.solicitar(@producto).deliver
    PedirMailer.pedir(@producto).deliver


    redirect_to "/productos"
    end



  # GET /productos/new
  def new

    @producto = Producto.new

  end

  # GET /productos/1/edit
  def edit

    if @current_user.rol == "Super" || @current_user.rol == "Administrador"
      @producto= Producto.find(params[:id])
      @producto.emailadm= @current_user.email
      @producto.save
      AprobacionMailer.aprobacion(@producto).deliver

    else
      EditarMailer.editar(@producto).deliver

    end

  end

  # POST /productos
  # POST /productos.json
  def create
    espacio = " "
    @producto = current_user.productos.new(producto_params)
    ConfirmarMailer.confirmar(@producto).deliver
    respond_to do |format|
      if @producto.save

         @encuestadonado = Encuestadonado.new
         @encuestadonado_id = @producto_id
         @encuestadonado.emaildon=@current_user.email
         @encuestadonado.iddon=@current_user.id


         @encuestadonado.sededon=@current_user.sede
         @encuestadonado.carreradon=@current_user.carrera
         @encuestadonado.sexo=@current_user.sexo
         @encuestadonado.categoria=@producto.categoria
         @encuestadonado.publicacion=@producto.titulo
         @encuestadonado.nompro=@producto.nombre
         @encuestadonado.nombredon=@current_user.nombre + espacio + @current_user.paterno + espacio + @current_user.materno

         @encuestadonado.save
         @encuestasolicitante = Encuestasolicitante.new
         @encuestasolicitante.nombredon=@current_user.nombre + espacio + @current_user.paterno + espacio + @current_user.materno
         @encuestasolicitante_id = @producto_id
         @encuestasolicitante.categoria = @producto.categoria
         @encuestasolicitante.publicacion=@producto.titulo
         @encuestasolicitante.nompro=@producto.nombre
         @encuestasolicitante.save

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

        format.html { redirect_to "/publicaciones/pendientes", notice: 'Producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy

    @producto.destroy
    DeleteMailer.delete(@producto).deliver
    respond_to do |format|
      format.html { redirect_to publicaciones_url, notice: 'Producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:nombre,:penalizar,:imagen,:email,:titulo,:user_id ,:descripcion, :defecto, :categoria, :estado, :horacreacion, :horaaprobacion, :horasolicitud, :emailadm, :idsolicitante)
    end
end
