class Vote < ActiveRecord::Base
  attr_accessible :answer_id, :user_id, :value
  belongs_to :answer
  belongs_to :user
  
end
