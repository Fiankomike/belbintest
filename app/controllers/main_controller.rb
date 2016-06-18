class MainController < ApplicationController
  
  require 'nexmo'	

  def index
  end

  def inbound
  	@txt = "hello again"

  	nexmo = Nexmo::Client.new(key: 'fdf057fe', secret: '35b716c280f5d89a')
  end
end
