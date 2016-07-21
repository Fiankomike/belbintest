class SmsvotesController < ApplicationController


  def index
  	@allsms = GetSms.all.order('messagetimestamp')
  	@allsmsvotes = Electoraldatum.joins(:voteresults).where('typeofelection = "PAL"').group(:pscode, :psname, :typeofelection, :candidate, :party).sum(:votes)
  end

  def sampledatadeleted
  	Electoraldatum.delete_all()
  end

  def sampledataresultsdeleted
  	Voteresult.delete_all()
  end

   def sampledatasmsdeleted
  	GetSms.delete_all()
  end

  def sampledatagenerated

  	aa = 1
  	ab = 1
  	ac = 1
  	ad = 1
  	ae = 1
  	af = 1
  	ag = 1
  	ah = 1
  	ai = 1
  	aj = 1

  	qa = 1
  	qb = 1
  	qc = 1
  	qd = 1
  	qe = 1
  	qf = 1
  	qg = 1
  	qh = 1
  	qi = 1
  	qj = 1

  	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Eastern"
		  	n.constituency = "Constituency Name ER#{x}"
		  	n.electoralarea = "Electoral Area Name ER#{y+qa}"
		  	n.psname = "Polling Station Name ER#{y+aa}"
		  	n.edpscode = "ER#{y+aa}"
		  	n.save
		  	aa += 1
		end
		qa += 1
	end

	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Western"
		  	n.constituency = "Constituency Name WR#{x}"
		  	n.electoralarea = "Electoral Area Name WR#{y}"
		  	n.psname = "Polling Station Name WR#{y}"
		  	n.edpscode = "WR#{y+ab}"
		  	n.save
		  	ab += 1
		end
		qb += 1
	end

	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Central"
		  	n.constituency = "Constituency Name CR#{x}"
		  	n.electoralarea = "Electoral Area Name CR#{y}"
		  	n.psname = "Polling Station Name CR#{y}"
		  	n.edpscode = "CR#{y+ac}"
		  	n.save
		  	ac += 1
		end
		qc += 1
	end

	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Volta"
		  	n.constituency = "Constituency Name VR#{x}"
		  	n.electoralarea = "Electoral Area Name VR#{y}"
		  	n.psname = "Polling Station Name VR#{y}"
		  	n.edpscode = "VR#{y+ad}"
		  	n.save
		  	ad += 1
		end
		qd += 1
	end

	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Greater Accra"
		  	n.constituency = "Constituency Name GAR#{x}"
		  	n.electoralarea = "Electoral Area Name GAR#{y}"
		  	n.psname = "Polling Station Name GAR#{y}"
		  	n.edpscode = "GAR#{y+ae}"
		  	n.save
		  	ae += 1
		end
		qe += 1
	end

	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Ashanti"
		  	n.constituency = "Constituency Name AR#{x}"
		  	n.electoralarea = "Electoral Area Name AR#{y}"
		  	n.psname = "Polling Station Name AR#{y}"
		  	n.edpscode = "AR#{y+af}"
		  	n.save
		  	af += 1
		end
		qf += 1
	end

	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Brong-Ahafo"
		  	n.constituency = "Constituency Name BAR#{x}"
		  	n.electoralarea = "Electoral Area Name BAR#{y}"
		  	n.psname = "Polling Station Name BAR#{y}"
		  	n.edpscode = "BAR#{y+ag}"
		  	n.save
		  	ag += 1
		end
		qg += 1
	end

	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Northen"
		  	n.constituency = "Constituency Name NR#{x}"
		  	n.electoralarea = "Electoral Area Name NR#{y}"
		  	n.psname = "Polling Station Name NR#{y}"
		  	n.edpscode = "NR#{y+ah}"
		  	n.save
		  	ah += 1
		end
		qh += 1
	end

	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Upper East"
		  	n.constituency = "Constituency Name UER#{x}"
		  	n.electoralarea = "Electoral Area Name UER#{y}"
		  	n.psname = "Polling Station Name UER#{y}"
		  	n.edpscode = "UER#{y+ai}"
		  	n.save
		  	ai += 1
		end
		qi += 1
	end

	for x in 2..4
  		for y in 2..6
		  	n = Electoraldatum.new
		  	n.region = "Upper West"
		  	n.constituency = "Constituency Name UW#{x}"
		  	n.electoralarea = "Electoral Area Name UW#{y}"
		  	n.psname = "Polling Station Name UW#{y}"
		  	n.edpscode = "UWR#{y+aj}"
		  	n.save
		  	aj += 1
		end
		qj += 1
	end
  end



def sampledatageneratedpre

	require "open-uri"
  	
# Presidential

# Western

ak = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=WR#{ak}&text=WR#{ak}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
ak += 2
end

# Eastern

bk = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=ER#{bk}&text=ER#{bk}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
bk += 2
end



# Greater Accra

ck = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=GAR#{ck}&text=GAR#{ck}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
ck += 2
end


# Central

dk = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=CR#{dk}&text=CR#{dk}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
dk += 2
end



# Ashanti

ek = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=AR#{ek}&text=AR#{ek}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
ek += 2
end


# Brong-Ahafo

fk = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=BAR#{fk}&text=BAR#{fk}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
fk += 2
end


# Volta

gk = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=VR#{gk}&text=VR#{gk}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
gk += 2
end


# Volta

hk = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=NR#{hk}&text=NR#{hk}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
hk += 2
end



# Upper East

ik = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=UER#{ik}&text=UER#{ik}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
ik += 2
end



# Upper West

jk = 1
for x in 1..12	
open("http://localhost:3000/main/inbound?msisdn=233244100200&to=12027856009&keyword=UWR#{jk}&text=UWR#{jk}+PRE+AAA+NDC+#{rand(1000)}+BBB+NPP+#{rand(1000)}+CCC+PPP+#{rand(1000)}+DDD+IND+#{rand(1000)}+EEE+CPP+#{rand(1000)}&message-timestamp=2016-07-09+20:19:29")
jk += 2
end

  end


  def sampledatageneratedpmt
  	

  end


end
