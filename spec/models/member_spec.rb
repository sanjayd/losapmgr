require 'spec_helper'

describe Member do
  subject {FactoryGirl.create(:member)}
  
  it {should validate_presence_of :firstname}
  it {should validate_presence_of :lastname}
  
  it {should ensure_length_of(:mi).is_equal_to(1)}
  
  it {should validate_presence_of :badgeno}
  it {should validate_uniqueness_of :badgeno}
  it {should validate_numericality_of :badgeno}
  
  it {should validate_presence_of :ssn}
  it {should validate_uniqueness_of :ssn}
  it {should validate_numericality_of :ssn}
end
