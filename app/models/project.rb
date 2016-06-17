class Project < ActiveRecord::Base
  has_many :my_assets
  accepts_nested_attributes_for :my_assets
end
