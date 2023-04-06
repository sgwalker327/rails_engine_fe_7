require 'rails_helper'

RSpec.describe 'Merchant Index Page' do
  describe 'As a visitor' do
    context 'When I visit the merchant index page' do
      it 'I see the name of each merchant in the system' do

        visit merchants_path

        expect(page).to have_content("Merchant Index")
        expect(page).to have_link("Schroeder-Jerde")
        expect(page).to have_link("Klein, Rempel and Jones")
      end

      it 'When I click on a merchant name, I am taken to that merchant’s show page' do
        visit merchants_path

        click_link("Schroeder-Jerde")

        expect(current_path).to eq(merchant_path(1))
      end
    end
  end
end