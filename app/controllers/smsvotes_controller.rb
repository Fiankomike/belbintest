class SmsvotesController < ApplicationController
  
  def index
  	@allsms = GetSms.all.order('messagetimestamp')
  	@allsmsvotes = Voteresult.all.order('pscode')

  	#@pmttotal = Voteresult.select(:candidate, :party, :votes).where(:typeofelection => "PAL").group(:candidate, :party).sum(:votes)
  	#@pretotal = Voteresult.select(:candidate, :party, :votes).where(:typeofelection => "PRE").group(:candidate, :party).sum(:votes)

  	#ElectoralArea
  	@pmttotal = Electoraldatum.joins(:voteresults).where('typeofelection = "PAL"').group(:electoralarea, :candidate, :party).sum(:votes)
  	@pretotal = Electoraldatum.joins(:voteresults).where('typeofelection = "PRE"').group(:electoralarea, :candidate, :party).sum(:votes)

  	#Constituency
  	@pmttotalconst = Electoraldatum.joins(:voteresults).where('typeofelection = "PAL"').group(:Constituency, :candidate, :party).sum(:votes)
  	@pretotalconst = Electoraldatum.joins(:voteresults).where('typeofelection = "PRE"').group(:Constituency, :candidate, :party).sum(:votes)

  	#Regional
  	@pmttotalregional = Electoraldatum.joins(:voteresults).where('typeofelection = "PAL"').group(:region, :candidate, :party).sum(:votes)
  	@pretotalregional = Electoraldatum.joins(:voteresults).where('typeofelection = "PRE"').group(:region, :candidate, :party).sum(:votes)

  	#National
  	@pmttotalnational = Electoraldatum.joins(:voteresults).where('typeofelection = "PAL"').group(:candidate, :party).sum(:votes)
  	@pretotalnational = Electoraldatum.joins(:voteresults).where('typeofelection = "PRE"').group(:candidate, :party).sum(:votes)

  end

end
