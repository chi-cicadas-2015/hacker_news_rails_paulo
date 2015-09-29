class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :text, presence: true

  def get_author(post)
    author = User.find(post.user_id)
  end

end
