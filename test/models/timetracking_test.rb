require 'test_helper'

class TimetrackingTest < ActiveSupport::TestCase
  test "save tracknig" do
    tracking = Timetracking.new({"latitude"=>"-23.4971136", "longitude"=>"-46.8877312", "comments"=>"comemtn"})
    assert tracking.save
  end

  test "save tracknig without comments" do
    tracking = Timetracking.new({"latitude"=>"-23.4971136", "longitude"=>"-46.8877312"})
    assert tracking.save
  end

  test "save tracknig without latitude" do
    tracking = Timetracking.new({"longitude"=>"-46.8877312", "comments"=>"comemtn"})
    assert_not tracking.save
  end

  test "save tracknig without longitude" do
    tracking = Timetracking.new({"latitude"=>"-23.4971136", "comments"=>"comemtn"})
    assert_not tracking.save
  end
end
