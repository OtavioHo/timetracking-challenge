require 'test_helper'

class GeofenceTest < ActiveSupport::TestCase
  test "save geofence" do
    geofence = Geofence.new({"latitude"=>"-23.4971136", "longitude"=>"-46.8877312", "radius"=>"5"})
    assert geofence.save
  end

  test "save geofence without lat" do
    geofence = Geofence.new({ "longitude"=>"-46.8877312", "radius"=>"5"})
    assert_not geofence.save
  end

  test "save geofence without lng" do
    geofence = Geofence.new({ "latitude"=>"-46.8877312", "radius"=>"5"})
    assert_not geofence.save
  end

  test "save geofence without radius" do
    geofence = Geofence.new({"latitude"=>"-23.4971136", "longitude"=>"-46.8877312"})
    assert_not geofence.save
  end
end
