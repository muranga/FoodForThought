class Order < ActiveRecord::Base
  has_and_belongs_to_many :items

  def available_items
    items.to_a.select do |item|
       item.available?
    end
  end

  def total_price
    items.to_a.inject(0) {|total, item| total += item.price }
  end
end