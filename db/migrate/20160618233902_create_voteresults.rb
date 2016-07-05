class CreateVoteresults < ActiveRecord::Migration
  def change
    create_table :voteresults do |t|
    	t.string "pscode", :limit => 50
    	t.string "typeofelection", :limit => 50
    	t.string "candidate", :limit => 50
    	t.string "party", :limit => 50
    	t.integer "votes", :limit => 11
      t.timestamps null: false
    end
    add_index("voteresults", "pscode")
  end
end
