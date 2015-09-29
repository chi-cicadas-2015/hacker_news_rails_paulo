class Post < ActiveRecord::Base
  belongs_to :user

  def get_author(post)
    author = User.find(post.user_id)
  end

end
