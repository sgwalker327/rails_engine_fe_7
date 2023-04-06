require 'rails_helper'

RSpec.describe Item do
  it "exists" do
    attributes = {
      id: 1,
      type: "item",
      attributes: {
        name: "Hot Dog",
        description: "Dog that is hot",
        unit_price: 1.00,
        merchant_id: 1
      }
    }

    item = Item.new(attributes)
    
    expect(item).to be_a(Item)
    expect(item.name).to eq("Hot Dog")
    expect(item.description).to eq("Dog that is hot")
    expect(item.unit_price).to eq(1.00)
    expect(item.merchant_id).to eq(1)
  end
end