require "testgem"

RSpec.describe Testgem do

  it "has a version number" do
    expect(Testgem::VERSION).not_to be nil
  end

  t = Testgem::Test.new
  
  it "responds to ping" do
    expect(t.ping).to eq("pong")
  end

end
