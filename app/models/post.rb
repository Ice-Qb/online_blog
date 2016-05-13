class Post < ActiveRecord::Base
  belongs_to :category

  acts_as_taggable
  resourcify

  validates :category, presence: true
  validates :title, presence: true
  validates :body, presence: true

  def self.search(search)
    if search
      where('title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end

  def self.category(category_id)
    category_id ? where(category_id: category_id.to_i) : all
  end

  def self.tagged_with(tag)
    tag ? super : all
  end

  def tag_list
    super.join(', ')
  end
end
