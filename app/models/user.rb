class User < ActiveRecord::Base
  include Authentication
  has_many :supports
  has_many :motives, through: :supports
  mount_uploader :avatar, ImageUploader
end
