require "minitest/spec"
require "minitest/autorun"
require "httparty"

require_relative "../lib/sitescan/site"

describe Site do

  it "can tell a site is not avialable" do
    unavailable_site.wont_be :available?
  end

  it "can tell a site is available" do
    available_site.must_be :available?
  end

  it "is an unknown type of site" do
    unknown_site.must_be :unknown?
  end

  private

  def available_site
    @available ||= site_for "https://github.com"
  end

  def site_for(url)
    Site.new(url)
  end

  def unavailable_site
    @unavailable ||= site_for "http://fasdfasdfasd.com"
  end

  def unknown_site
    @unknown_site ||= available_site
  end

end