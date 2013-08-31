require "spec_helper"

describe "practice routes" do
  it "routes /practices to practices_path" do
    { get: practices_path }.should route_to(controller: "practices", action: "index")
  end
end
