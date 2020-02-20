require "testgem"
require "logfmt"

RSpec.describe Testgem do

  it "has a version number" do
    expect(Testgem::VERSION).not_to be nil
  end

  it "has correct logfmt" do
    expect(Logfmt::VERSION).to eq('0.0.9')
  end

  t = Testgem::Test.new
  
  it "responds to ping" do
    expect(t.ping).to eq("pong")
  end

end
