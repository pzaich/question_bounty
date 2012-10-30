class Answer < ActiveRecord::Base
  attr_accessible :question_id, :user, :arguments_attributes
  belongs_to :user
  belongs_to :question
  has_many :arguments
  has_many :votes
  accepts_nested_attributes_for :arguments

  def self.ranked_by_vote(question_id)
  	Answer.order('votes_count desc').find_by_question_id(question_id)
  	Answer.find(:all, :order => 'votes_count desc', :conditions => "question_id = #{question_id}")
  end

end
