class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  searchable do
    text :title, default_boost: 2
    text :body
  end
end
