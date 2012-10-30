class Question < ActiveRecord::Base
  attr_accessible :description, :expiration, :title, :image_url, :hours, :bounty_chips
  before_validation :generate_deadline, :set_bounty
  attr_accessor :hours
  belongs_to :user
  has_many :answers
  has_many :arguments

  def set_bounty
    self.bounty_chips = self.bounty_chips.to_i
  end

  def generate_deadline
  	self.expiration = Time.now + self.hours.to_i.hours
  end
  validates_presence_of :title
end
