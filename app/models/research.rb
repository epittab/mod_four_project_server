class Research < ApplicationRecord
    belongs_to :user
    has_many :job_listings
end
