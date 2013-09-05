require "spec_helper"

describe "practice routes" do
  it "routes /practices to the practices controller" do
    expect( get "/practices" ).to route_to(controller: "practices", action: "index")
  end
  it "routes /practices/new to new action" do
    expect( get "/practices/new" ).to route_to(controller: "practices", action: "new")
  end
  it "routes /practices to create action" do
    expect( post "/practices" ).to route_to(controller: "practices", action: "create")
  end
end
