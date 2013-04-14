class Member < ActiveRecord::Base
  attr_accessible :badgeno, :firstname, :lastname, :mi, :ssn

  validates :firstname, presence: true
  validates :mi, length: {is: 1}
  validates :lastname, presence: true
  validates :badgeno, presence: true, uniqueness: true, numericality: true, length: {maximum: 6}
  validates :ssn, presence: true, uniqueness: true, numericality: true, length: {is: 9}
end
