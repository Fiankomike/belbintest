class Electoraldatum < ActiveRecord::Base
	has_many :voteresults, foreign_key: 'pscode', primary_key: 'edpscode', dependent: :delete_all, autosave: true
end
