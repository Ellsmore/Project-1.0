class Application < ActiveRecord::Base
  belongs_to :job_ad
  belongs_to :candidate
end
