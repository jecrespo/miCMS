class ArticulosController < ApplicationController

  def index
    @articulos=Articulo.all.order("Create at DESC")
  end

  def show
  end

  def new
    @articulo = Articulo.new
  end

  def create
    @articulo = Articulo.new(articulo_params)
    if @articulo.save
      redirect_to @articulo
    else
      reder 'new'
    end
  end

  def edit
  end
  
  def update
  end

  def destroy
  end

  def articulos_params
    params.require(:articulo).permit(:titulo, :conteido)
  end
end
