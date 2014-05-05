class Book < ActiveRecord::Base
  acts_as_taggable
  
  validates :name, presence: true, uniqueness: true
  validates_numericality_of :price, greater_than: 0
  validates_inclusion_of :category, in: ["Science", "Travel", "Religion and Spirituality", "Philosophy", "Health and Fitness"]
end
