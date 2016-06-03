class WhoisController < ApplicationController

 def show
  connection = Whois::Client.new
  @result = connection.lookup(params[:query])
  respond_to do |format|
    format.html
    format.text do 
      render text: @result
    end
    format.json do
      render json: @result.to_json
    end
  end
 end


end
