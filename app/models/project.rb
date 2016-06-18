class Project < ActiveRecord::Base
  has_many :my_assets
  belongs_to :team, dependent: :destroy
end
