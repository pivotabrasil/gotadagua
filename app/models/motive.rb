class Motive < ActiveRecord::Base
  belongs_to :tag
  validates :description, :tag, presence:true
end
