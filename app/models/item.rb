class Item < ActiveRecord::Base
  validates_presence_of :name, :description, :price, :available
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :name, uniqueness: { case_sensitive: false }

  has_many :categorizations
  has_many :categories, through: :categorizations
end
