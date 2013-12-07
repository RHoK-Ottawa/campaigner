class Campaign < ActiveRecord::Base
  attr_accessible :petition_text, :title
  
  validates :title, presence: true
  validates :petition_text, presence: true
end
