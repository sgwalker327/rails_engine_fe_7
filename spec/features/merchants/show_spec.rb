require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  describe 'As a visitor' do
    describe 'When I visit a merchant show page' do
      it 'I see the merchant name and their associated items' do

        visit merchant_path(1)
        save_and_open_page
        expect(page).to have_content("Schroeder-Jerde's Items")
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
      end
    end
  end
end