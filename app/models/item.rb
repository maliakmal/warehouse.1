class Item < ActiveRecord::Base
  belongs_to :picking_order
  belongs_to :product
  belongs_to :location
  belongs_to :location
end
