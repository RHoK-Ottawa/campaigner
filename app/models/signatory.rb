class Signatory < ActiveRecord::Base
  attr_accessible :name, :email
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  belongs_to :campaign
end
