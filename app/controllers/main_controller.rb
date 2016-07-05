class MainController < ApplicationController
  
  require 'nexmo'
  require 'socket'
  require 'uri'
  require 'pstore'	

  def index
  end

  

  def outbound

  	#nexmo = Nexmo::Client.new(key: 'fdf057fe', secret: '35b716c280f5d89a')

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
  	#nexmo = Nexmo::Client.new(key: 'fdf057fe', secret: '35b716c280f5d89a')
  	@messagerecipient = params[:to]
  	@messagemsisdn = params[:msisdn]
  	@messagekeyword = params[:keyword]
  	@messagetext = params[:text]
    #@messagetext = "A010101 PAL KOD NDC 1 BYA NPP 20 AAA PP 10"
  	@messagetimestamp = params[:'message-timestamp']
    

    if !@messagetext.blank?
    	newsms = GetSms.new
    	newsms.recipients = @messagerecipient
    	newsms.msisdn = @messagemsisdn
    	newsms.keyword = @messagekeyword
    	newsms.smstext = @messagetext
    	newsms.messagetimestamp = @messagetimestamp
    	newsms.save
    end

    if !@messagetext.blank?
      @splittxt = @messagetext.split(/\W+/)

      #Part 1 of Split
          newresult = Voteresult.new
          newresult.pscode = @splittxt[0]
          newresult.typeofelection = @splittxt[1]
          newresult.candidate = @splittxt[2]
          newresult.party = @splittxt[3]
          newresult.votes = @splittxt[4]
          newresult.save

      #Part 2 of Split
      (5..@splittxt.size-1).each do |i|

        if i%3 == 2 then 
          newresult = Voteresult.new
          newresult.pscode = @splittxt[0]
          newresult.typeofelection = @splittxt[1]
          newresult.candidate = @splittxt[i]
          newresult.party = @splittxt[i+1]
          newresult.votes = @splittxt[i+2]
          newresult.save
        else
          next
        end
      end
    end

  	# if @messagerecipient == nil
  	# 	p "Nothing to show"
  	# else
  	# 	response = nexmo.send_message(from: "+46769439898", to: '+233243200950', text: @messagetext + " " + 
  	# 		@messagekeyword + " " + @messagemsisdn + " " + @messagerecipient + " " + @messagetimestamp)
  	# end
  	

  	#response = nexmo.send_message(from: '+46769439898', to: '+233243200950', text: 'Photoshop')
  end




end
