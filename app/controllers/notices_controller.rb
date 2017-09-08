class NoticesController < ApplicationController

  before_action :set_notice, only: [:show, :edit, :update, :destroy]
  def index
    @notices=Notice.all.order("top desc")
  end

  def edit
    @notice=Notice.find(params[:id])
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)

    respond_to do |format|
      if @notice.save
        format.html { redirect_to notices_path, notice: 'Dgt was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|

      #debugger
    if notice_params[:top]=="1"
      notice =Notice.find_by_top(1)

      if notice
         notice.top=0
         notice.save
      end
    end



      if @notice.update(notice_params)
        format.html { redirect_to notices_path, notice: 'Dgt was successfully updated.' }
        format.json { render :show, status: :ok, location: @notice }
      else
        format.html { render :edit }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @notice.destroy
    respond_to do |format|
      format.html { redirect_to notices_path, notice: '删除成功' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_notice
    @notice = Notice.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def notice_params
    params.require(:notice).permit(:title ,:content, :top)
  end


end
