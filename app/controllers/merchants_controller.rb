class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.merchants_list
  end

  def show
    @merchant = MerchantFacade.new.merchant(params[:id])
  end

  
end