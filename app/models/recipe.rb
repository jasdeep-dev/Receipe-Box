class Recipe < ApplicationRecord
	  mount_uploader :avatar, AvatarUploader
	  has_many :ingredients
	  has_many :directions
	  accepts_nested_attributes_for :ingredients,
	         reject_if: proc{|attr| attr['name'].blank? }, allow_destroy: true
	  accepts_nested_attributes_for :directions,
	         reject_if: proc{|attr| attr['steps'].blank? }, allow_destroy: true
	  validates :title, :description, :avatar, presence: true
end
