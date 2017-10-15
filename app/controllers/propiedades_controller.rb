class PropiedadesController < ApplicationController
  def index
    @propiedades = Propiedade.all
  end
 
  def show
    @propiedades = Propiedade.find(params[:id])
  end
 
  def new
    @propiedades = Propiedade.new
  end
 
  def edit
    @propiedades = Propiedade.find(params[:id])
  end
 
  def create
    @propiedades = Propiedade.new(propiedades_params)
 
    if @propiedades.save
      redirect_to @propiedades
    else
      render 'new'
    end
  end
 
  def update
    @propiedades = Propiedade.find(params[:id])
 
    if @propiedades.update(propiedades_params)
      redirect_to @propiedades
    else
      render 'edit'
    end
  end
 
  def destroy
    @propiedades = Propiedade.find(params[:id])
    @propiedades.destroy
 
    redirect_to propiedades_path
  end
 
  private
    def propiedades_params
      params.require(:propiedade).permit(:descripcion, :direccion, :ciudad, :provincia, :pais, :valoracion, :dimensiones)
    end
end
