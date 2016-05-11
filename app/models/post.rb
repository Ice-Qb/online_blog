class Post < ActiveRecord::Base
  belongs_to :category

  validates :category, presence: true
  validates :title, presence: true
  validates :body, presence: true
end
