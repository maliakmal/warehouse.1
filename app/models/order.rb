class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :location
  belongs_to :location
  belongs_to :company
  belongs_to :user
end
