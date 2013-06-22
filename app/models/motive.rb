class Motive < ActiveRecord::Base
  belongs_to :tag
  has_many :supports
  has_many :supporters, through: :supports
  validates :description, :tag, presence:true

  def self.order_by_support
    order(supports_count: :desc)
  end

  def self.order_by_newest
    order(created_at: :desc)
  end
end
