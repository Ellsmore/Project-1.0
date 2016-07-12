class Job_ad < ActiveRecord::Base
  has_many :applications
  has_many :candidates, :through => :applications
  belongs_to :client
end
