require 'rails_helper'

RSpec.describe ItemService do
  describe 'class methods' do
    describe '.merchant_items' do
      it 'returns all items for a merchant' do
        items = ItemService.merchant_items(1)

        expect(items).to be_a(Hash)
        expect(items[:data]).to be_an(Array)
      end
    end
  end
end