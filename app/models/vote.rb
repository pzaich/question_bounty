class Vote < ActiveRecord::Base
  attr_accessible :answer, :user_id, :value
  belongs_to :answer, :counter_cache => true
  belongs_to :user
  
  validates_uniqueness_of :answer_id, :scope => :user_id
end
