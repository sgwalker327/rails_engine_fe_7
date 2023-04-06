require 'rails_helper'

RSpec.describe MerchantFacade do
  describe 'merchants_list' do
    it 'returns an array of merchant objects' do
      merchants = MerchantFacade.new.merchants_list

      expect(merchants).to be_an(Array)
    end
  end

  describe '#merchant' do
    it 'returns a merchant object based on id' do
      merchant = MerchantFacade.new.merchant(1)

      expect(merchant).to be_an(Merchant)
      expect(merchant.id.to_i).to eq(1)
      expect(merchant.name).to eq("Schroeder-Jerde")
    end
  end
end