class Question < ActiveRecord::Base
  attr_accessible :description, :expiration, :title, :image_url, :hours
  before_create :generate_deadline
  attr_accessor :hours
  belongs_to :user
  has_many :answers
  has_many :arguments

  def generate_deadline
  	self.expiration = Time.now + self.hours.to_i.hours
  end
  validates_presence_of :title
end
