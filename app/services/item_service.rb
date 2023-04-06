require 'faraday'

class ItemService
  def self.merchant_items(id)
    get_url("/api/v1/merchants/#{id}/items")
  end

  private

  def self.get_url(url)
    response = conn.get(url)
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000/")
  end
end