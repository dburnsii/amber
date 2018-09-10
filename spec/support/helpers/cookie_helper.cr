module CookieHelper
  include Cookies

  def new_cookie_store(headers = HTTP::Headers.new)
    cookies = Cookies::Store.new
    cookies.update(Cookies::Store.from_headers(headers))
    cookies
  end

  def cookie_header(cookies)
    http_headers = HTTP::Headers.new
    cookies.write(http_headers)
    http_headers["Set-Cookie"]
  end
end
