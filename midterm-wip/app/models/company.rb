class Company < ActiveRecord::Base
  
belongs_to :industry
has_one :company_profile
has_one :location
has_many :results
has_many :external_sources

end 