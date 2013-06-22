class Support < ActiveRecord::Base
  belongs_to :supporter, class_name: 'User', foreign_key: 'user_id'
  belongs_to :motive, counter_cache: true
end
