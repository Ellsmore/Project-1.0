class Job_ad < ActiveRecord::Base
  belongs_to :applications
  has_many :candidates, :through => :applications
  belongs_to :client
end
