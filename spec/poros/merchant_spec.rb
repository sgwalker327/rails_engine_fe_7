require 'rails_helper'

RSpec.describe Merchant do
  it "exists" do
    attributes = {
      type: "merchant",
      attributes: {
        name: "Steve's Hot Dogs"
      }
    }

    merchant = Merchant.new(attributes)
    
    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to eq("Steve's Hot Dogs")
  end
end