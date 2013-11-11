require "minitest/spec"
require "minitest/autorun"
require "ostruct"

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

  def fake_http_client(available)
    OpenStruct.new(:available? => available)
  end

  def available_site
    @available ||= site_for "http://available.com", fake_http_client(true)
  end

  def site_for(url, http_adapter)
    Site.new(url, http_adapter)
  end

  def unavailable_site
    @unavailable ||= site_for "http://unavailable.com", fake_http_client(false)
  end

  def unknown_site
    @unknown_site ||= available_site
  end

end