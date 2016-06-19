class SmsvotesController < ApplicationController
  
  def index
  	@allsms = GetSms.all.order('messagetimestamp')
  	@allsmsvotes = Voteresult.all.order('pollingstationcode')

  	@pmttotal = Voteresult.select(:partyorcandidate, :votes).where(:typeofelection => "PMT").group(:partyorcandidate).sum(:votes)
  	@pretotal = Voteresult.select(:partyorcandidate, :votes).where(:typeofelection => "PRE").group(:partyorcandidate).sum(:votes)

  end

end
