class Question < ActiveRecord::Base
  attr_accessible :description, :expiration, :title
  belongs_to :user

  validates_presence_of :title
  validates_presence_of :expiration
end
