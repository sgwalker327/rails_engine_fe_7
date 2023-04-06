class Merchant
  attr_reader :id, :name

  def initialize(attrs)
    @id = attrs[:id]
    @name = attrs[:attributes][:name]
  end

  def items
    ItemFacade.new.items_by_merchant(@id)
  end
end