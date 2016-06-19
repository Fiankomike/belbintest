class CreateVoteresults < ActiveRecord::Migration
  def change
    create_table :voteresults do |t|
    	t.string "pollingstationcode", :limit => 50
    	t.string "typeofelection", :limit => 50
    	t.string "partyorcandidate", :limit => 50
    	t.integer "votes", :limit => 11
      t.timestamps null: false
    end
  end
end
