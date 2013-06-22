class Motive < ActiveRecord::Base
  belongs_to :tag
  has_many :supports
  has_many :supporters, through: :supports
  validates :description, :tag, presence:true
end
