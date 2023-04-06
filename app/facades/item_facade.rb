class ItemFacade
  def items_by_merchant(merchant_id)
    items = ItemService.merchant_items(merchant_id)
    items[:data].map do |item|
      Item.new(item)
    end
  end
end