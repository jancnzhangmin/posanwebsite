class MyclasController < ApplicationController

  before_action :set_mycla, only: [:show, :edit, :update, :destroy]
  def index
    @myclas=Mycla.all
  end
  def edit
    @products = @mycla.products
  end
  def show

  end
  def new
    @mycla = Mycla.new

  end
  def create
    @mycla = Mycla.new(mycla_params)
    respond_to do |format|
      if @mycla.save
        format.html { redirect_to myclas_path, notice: 'Dgt was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  def update
    respond_to do |format|
      if @mycla.update(mycla_params)
        format.html { redirect_to myclas_path, notice: 'Dgt was successfully updated.' }
        format.json { render :show, status: :ok, location: @mycla }
      else
        format.html { render :edit }
        format.json { render json: @mycla.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @mycla.destroy
    respond_to do |format|
      format.html { redirect_to myclas_path, notice: '删除成功' }
      format.json { head :no_content }
    end
  end
  private
# Use callbacks to share common setup or constraints between actions.
  def set_mycla
    @mycla = Mycla.find(params[:id])
  end
# Never trust parameters from the scary internet, only allow the white list through.
  def mycla_params
    params.require(:mycla).permit(:cla)
  end


end
