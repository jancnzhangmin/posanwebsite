class MyproductsController < ApplicationController\

  before_action :set_myproduct, only: [:show, :edit, :update, :destroy]
  def index
    @myproducts=Myproduct.all
  end
  def edit
    @myproduct=Myproduct.find(params[:id])
  end
  def new
    @myproduct = Myproduct.new
    @myclas = Mycla.all
  end
  def create
    @myproduct = Myproduct.new(myproduct_params)
    respond_to do |format|
      if @myproduct.save
        format.html { redirect_to myproducts_path, notice: 'Dgt was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  def update
    respond_to do |format|
      if @myproduct.update(myproduct_params)
        format.html { redirect_to myproducts_path, notice: 'Dgt was successfully updated.' }
        format.json { render :show, status: :ok, location: @myproduct }
      else
        format.html { render :edit }
        format.json { render json: @myproduct.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @myproduct.destroy
    respond_to do |format|
      format.html { redirect_to myproducts_path, notice: '删除成功' }
      format.json { head :no_content }
    end
  end
  private
# Use callbacks to share common setup or constraints between actions.
  def set_myproduct
    @myproduct = Myproduct.find(params[:id])
  end
# Never trust parameters from the scary internet, only allow the white list through.
  def myproduct_params
    params.require(:myproduct).permit(:mycla_id, :name, :spec, :content, :price)
  end

end
