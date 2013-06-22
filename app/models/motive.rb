class Motive < ActiveRecord::Base
  belongs_to :tag
  has_many :supports
  has_many :supporters, through: :supports, class_name: 'User', foreign_key: 'user_id'
  validates :description, :tag, presence:true
end
