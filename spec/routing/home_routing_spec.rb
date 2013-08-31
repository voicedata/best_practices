require "spec_helper"

describe "routes for home" do
  it "routes '/' to home path" do
    { get: "/" }.should route_to(controller: "site", action: "home")
  end
end
