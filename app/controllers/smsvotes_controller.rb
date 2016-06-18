class SmsvotesController < ApplicationController
  def index
  	@allsmsvotes = GetSms.all.order('messagetimestamp DESC')
  end
end
