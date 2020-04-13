class UserController < ApplicationController



  def index
    palabra= "%#{params[:term]}%"

    @user = User.where("email LIKE ?",palabra).order("email ASC")
  end

def cambio

 @user = User.all
 var=params[:term]
 var1=params[:term1]
 var2=params[:term2]
  if var != nil
      @user.each do |user|
        user.tope = var
        user.save
      end

    end
  

  end
  def permisos
    palabra= "%#{params[:term]}%"

    @user = User.where("email LIKE ?",palabra).order("email ASC")
  end

  def inactivos
    palabra= "%#{params[:term]}%"
    @user = User.where("email LIKE ?",palabra).order("email ASC")
  end
  def  estadisticos
  @user= User.all

  end

  def bloquear
      @user= User.find(params[:id])
      @user.bloqueo= "Bloqueado"
      @user.save
      BloqueoMailer.bloqueo(@user).deliver
      redirect_to users_index_path
  end
  def desbloquear
      @user= User.find(params[:id])
      @user.bloqueo= "Desbloqueado"
      @user.save
      DesbloqueoMailer.desbloqueo(@user).deliver
      redirect_to users_index_path
  end
  def administrador
      @user= User.find(params[:id])
      @user.rol= "Administrador"
      @user.save
      UsuarioMailer.usuario(@user).deliver
      redirect_to users_permisos_path
  end
  def noadministrador
      @user= User.find(params[:id])
      @user.rol= "Usuario"
      @user.save
      NoadmiMailer.noadmi(@user).deliver
      redirect_to users_permisos_path
  end
  def eliminar
    @user= User.find(params[:id])
    @user.destroy
    EliminarMailer.eliminar(@user).deliver
    redirect_to users_inactivos_path

  end
  def eliminar_inactivo
    @user= User.find(params[:id])
    @user.destroy
    redirect_to users_inactivos_path

  end

  def update
  respond_to do |format|
    if @user.update(user_params)
      format.html { redirect_to @user, notice: 'Tu publicación fue actualizada' }
      format.json { render :show, status: :ok, location: @user }
    else
      format.html { render :edit }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end
def destroy
  @user= User.find(params[:id])
  @user.destroy
  respond_to do |format|
    format.html { redirect_to "http://localhost:3000/users/index", notice: 'La cuenta a sido eliminada' }
    format.json { head :no_content }
  end
end

  def user_params
    params.require(:user).permit(:bloqueo)
  end
end
