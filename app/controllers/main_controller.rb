class MainController < ApplicationController
  
  require 'nexmo'
  require 'socket'
  require 'uri'
  require 'pstore'	

  def index
  end

  

  def outbound

  	nexmo = Nexmo::Client.new(key: 'fdf057fe', secret: '35b716c280f5d89a')

  	#response = nexmo.send_message(from: '+46769439898', to: '+233243200950', text: 'Photoshop')


	# if response['messages'][0]['status'].zero?
	#   # success!
	#   @txt = "SMS delivered"
	# else
	#   # error response
	#   @txt = "SMS delivery failed"
	# end

  end

  def inbound
  	@messagerecipient = params[:to]
  	@messagemsisdn = params[:msisdn]
  	p @messagemsisdn
  end




end
