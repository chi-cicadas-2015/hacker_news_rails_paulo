class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def author(id) # had to create this as association was not working
    author = User.find(id)
  end

end
