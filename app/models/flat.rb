class Flat < ApplicationRecord
  # This says what column the non-geocoded address is stored in
  geocoded_by :address
  # This says to geocode the address if it has changed
  after_validation :geocode, if: :address_changed?
end
