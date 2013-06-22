class Tag < ActiveRecord::Base
  has_many :motives
  validates :name, presence:true

  def to_s
    name
  end
end
