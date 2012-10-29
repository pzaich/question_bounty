class Argument < ActiveRecord::Base
  attr_accessible :answer_id, :question_id, :response
  belongs_to :question
  belongs_to :answer
  belongs_to :user

  #validates_presence_of :response

end
