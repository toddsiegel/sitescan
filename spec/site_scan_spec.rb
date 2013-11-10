require "minitest/spec"
require "minitest/autorun"

require_relative "../lib/sitescan/site"

describe Site do

  it "can tell a site is not avialable" do
    site = Site.new("http://fasdfasdfasd.com")
    site.available?.must_be :== ,false
  end
end