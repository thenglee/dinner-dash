class Item < ActiveRecord::Base
  validates_presence_of :name, :description, :price, :available
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :name, uniqueness: { case_sensitive: false }

  validates_presence_of :categories

  has_many :categorizations
  has_many :categories, through: :categorizations

  has_attached_file :photo, styles: { medium: '450x350>', small: '90x70>' },
                      default_url: '/images/:style/missing.png'
  validates_attachment :photo, size: { less_than: 2.megabytes },
                         content_type: { content_type: ['image/jpg', 'image/jpeg', 'image/png'] },
                         file_name: { matches: [/jpe?g\Z/, /png\Z/] }
end
