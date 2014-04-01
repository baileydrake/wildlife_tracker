class Sighting < ActiveRecord::Base
  validates :location, :presence => true
  validates :date, :presence => true
  validates :species_id, :presence => true

  belongs_to(:species)
end
