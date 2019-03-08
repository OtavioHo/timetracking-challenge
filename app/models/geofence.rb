class Geofence < ApplicationRecord
    validates :radius, presence: true
    validates :latitude, presence: true
    validates :longitude, presence: true
end
