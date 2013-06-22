class Tag < ActiveRecord::Base
  has_many :motives

  def to_s
    name
  end
end
