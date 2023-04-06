require 'rails_helper'

RSpec.describe ItemFacade do
  describe '#items_by_merchant' do
    it 'returns an array of merchant items' do
      items = ItemFacade.new.items_by_merchant(1)

      expect(items).to be_an(Array)
    end
  end
end