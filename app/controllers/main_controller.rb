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
  	nexmo = Nexmo::Client.new(key: 'fdf057fe', secret: '35b716c280f5d89a')
  	@messagerecipient = params[:to]
  	@messagemsisdn = params[:msisdn]
  	@messagekeyword = params[:keyword]
  	@messagetext = params[:text]
  	@messagetimestamp = params[:'message-timestamp']

  	newsms = GetSms.new
  	newsms.recipients = @messagerecipient
  	newsms.msisdn = @messagemsisdn
  	newsms.keyword = @messagekeyword
  	newsms.smstext = @messagetext
  	newsms.messagetimestamp = @messagetimestamp
  	newsms.save

  	# if @messagerecipient == nil
  	# 	p "Nothing to show"
  	# else
  	# 	response = nexmo.send_message(from: "+46769439898", to: '+233243200950', text: @messagetext + " " + 
  	# 		@messagekeyword + " " + @messagemsisdn + " " + @messagerecipient + " " + @messagetimestamp)
  	# end
  	

  	#response = nexmo.send_message(from: '+46769439898', to: '+233243200950', text: 'Photoshop')
  end




end
