class Location < ApplicationRecord
  belongs_to :locationable, polymorphic: true
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [address,suburb,state,country,postcode].compact.join(', ')
  end
end
