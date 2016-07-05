class Voteresult < ActiveRecord::Base
	belongs_to :electoraldatum, foreign_key: 'parent_alphanum_id', primary_key: 'edpscode'
end
