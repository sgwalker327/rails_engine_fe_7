require 'rails_helper'

RSpec.describe MerchantService do
 describe 'class methods' do
    describe '.merchants' do
      it 'returns all merchants' do
        merchants = MerchantService.merchants

        expect(merchants).to be_a(Hash)
        expect(merchants[:data]).to be_an(Array)
      end
    end
  end
end