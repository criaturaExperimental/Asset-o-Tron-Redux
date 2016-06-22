class Project < ActiveRecord::Base
  has_many :my_assets, dependent: :destroy
  belongs_to :team
  has_many :comments, as: :commentable
end
