class MyAsset < ActiveRecord::Base
  # on this model assets belong to just one project so it doesn't make sense to keep them after the project is deleted
  belongs_to :project
  has_many :comments, as: :commentable
end
