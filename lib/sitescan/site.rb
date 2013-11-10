class Site

  def initialize(url)
    @url = url
  end

  def available?
  begin
    http = HTTParty.get(url)
  rescue SocketError
    return false
  end
  http.response.is_a? Net::HTTPSuccess
  end

  private

  attr_reader :url

end