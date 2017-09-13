class ApisController < ApplicationController

  def returntest
    products = Product.all
    render json: params[:callback]+'({"code":"'+params[:code].to_s+'",product:'+products.to_json+'})',content_type: "application/javascript"
  end

end
