class Geofence < ApplicationRecord
    validates :radius, presence: true
end
