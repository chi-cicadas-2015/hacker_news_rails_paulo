module CommentsHelper
  def get_author(id)
    author = User.find(id)
  end
end
