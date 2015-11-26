class Category < ActiveRecord::Base
  validates_presence_of :name

  has_many :categorizations
  has_many :items, through: :categorizations
end
