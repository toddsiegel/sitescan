require "minitest/spec"
require "minitest/autorun"
require "httparty"

require_relative "../lib/sitescan/site"

describe Site do

  it "can tell a site is not avialable" do
    site = site_for "http://fasdfasdfasd.com"
    site.wont_be :available?
  end

  it "can tell a site is available" do
    site = site_for "https://github.com"
    site.must_be :available?
  end

  it "is an unknown type of site" do
    site = site_for "https://github.com"
    site.must_be :unknown?
  end

  private

  def site_for(url)
    Site.new(url)
  end
end