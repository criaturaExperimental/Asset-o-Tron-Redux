class Team < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :projects
  has_many :my_assets, through: :projects, source: :my_assets
end
