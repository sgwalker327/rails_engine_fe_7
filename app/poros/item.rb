class Item
  attr_reader :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(attrs)
    # require 'pry'; binding.pry
    @name = attrs[:attributes][:name]
    @description = attrs[:attributes][:description]
    @unit_price = attrs[:attributes][:unit_price]
    @merchant_id = attrs[:attributes][:merchant_id]
  end
end