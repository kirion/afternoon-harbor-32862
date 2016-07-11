class StaticPagesController < ApplicationController
  def home
    @clientip=request.remote_ip
    @host=request.host
  end
end
