class User < ActiveRecord::Base
  include Authentication
  mount_uploader :avatar, ImageUploader
end
