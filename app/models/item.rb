class Item < ActiveRecord::Base

  has_and_belongs_to_many :order
end
