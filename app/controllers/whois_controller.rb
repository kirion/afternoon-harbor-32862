class WhoisController < ApplicationController

 def show
  c = Whois::Client.new
  r = c.lookup("google.com")
 end


end
