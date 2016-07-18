class SmsvotesController < ApplicationController
  
  def index
  	@allsms = GetSms.all.order('messagetimestamp')
  	@allsmsvotes = Electoraldatum.joins(:voteresults).where('typeofelection = "PAL"').group(:pscode, :psname, :typeofelection, :candidate, :party).sum(:votes)

  end


end
