class Answer < ActiveRecord::Base
  attr_accessible :question_id, :user, :arguments_attributes
  belongs_to :user
  belongs_to :question
  has_many :arguments
  has_many :votes
  accepts_nested_attributes_for :arguments

end
