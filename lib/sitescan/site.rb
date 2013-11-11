class Site

  attr_reader :url

  def initialize(url, http_client)
    @url = url
    @http_client = http_client
  end

  def available?
    http_client.available?
  end

  def unknown?
    true
  end

  private

  attr_reader :http_client

end