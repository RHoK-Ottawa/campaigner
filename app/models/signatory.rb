class Signatory < ActiveRecord::Base
  attr_accessible :name, :email
  
  validates :name, presence: true
  validates :email, presence: true, 
                    :uniqueness => {:scope => :campaign_id},
                    :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  belongs_to :campaign
end
