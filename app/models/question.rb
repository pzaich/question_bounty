class Question < ActiveRecord::Base
  attr_accessible :description, :expiration, :title, :image_url
  belongs_to :user
  has_many :answers
  has_many :arguments

  validates_presence_of :title
  validates_presence_of :expiration
end
