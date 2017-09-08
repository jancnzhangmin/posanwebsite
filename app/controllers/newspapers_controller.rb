class NewspapersController < ApplicationController

  before_action :set_newspaper, only: [:show, :edit, :update, :destroy]
  def index
    @newspapers=Newspaper.all.order("top desc")
  end

  def edit
    @newspaper=Newspaper.find(params[:id])
  end

  def new
    @newspaper = Newspaper.new
  end

  def create
    @newspaper = Newspaper.new(newspaper_params)

    respond_to do |format|
      if @newspaper.save
        format.html { redirect_to newspapers_path, notice: 'Dgt was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update

    respond_to do |format|

      if newspaper_params[:top]==1
        @newspaper=Notice.find_by_top(1)
        if @newspaper
          @newspaper.top=0
          @newspaper.save
        end
      end

      if @newspaper.update(newspaper_params)
        format.html { redirect_to newspapers_path, notice: 'Dgt was successfully updated.' }
        format.json { render :show, status: :ok, location: @newspaper }
      else
        format.html { render :edit }
        format.json { render json: @newspaper.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @newspaper.destroy
    respond_to do |format|
      format.html { redirect_to newspapers_path, notice: '删除成功' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_newspaper
    @newspaper = Newspaper.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def newspaper_params
    params.require(:newspaper).permit(:title ,:newspaperimage,:content, :top)
  end

end
