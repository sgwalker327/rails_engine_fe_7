class MerchantFacade
  def merchants_list
    json = MerchantService.merchants
    @merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def merchant(id)
    json = MerchantService.merchant(id)
    Merchant.new(json[:data])
  end


end