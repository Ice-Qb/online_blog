class Category < ActiveRecord::Base
  has_many :posts, inverse_of: :category
  acts_as_tree order: 'name'
  validates :name, presence: true
end
