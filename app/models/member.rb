class Member < ActiveRecord::Base
  attr_accessible :badgeno, :firstname, :lastname, :mi, :ssn

  validates :firstname, presence: true
  validates :mi, length: {is: 1}
  validates :lastname, presence: true
  validates :badgeno, presence: true, uniqueness: true, numericality: true
  validates :ssn, presence: true, uniqueness: true, numericality: true
end
