class Item < ActiveRecord::Base
  validates_presence_of :name, :description, :price, :available
end
