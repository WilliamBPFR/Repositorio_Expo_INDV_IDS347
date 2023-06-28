class NotasController < ApplicationController
  def index
    @notas = Notas.all
  end

  def show
    @nota = Notas.find(params[:id])
  end

  def new
    @nota = Notas.new
  end

  def create
    @nota = Notas.new(nota_params)
    
    if @nota.save
      redirect_to nota_path(@nota)
    else
      render 'new'
    end
  end

  def edit
    @nota = Notas.find(params[:id])
  end

  def update
    @nota = Notas.find(params[:id])
    
    if @nota.update(nota_params)
      redirect_to nota_path(@nota)
    else
      render 'edit'
    end
  end

  private

  def nota_params
    params.require(:notas).permit(:title, :content)
  end
end
