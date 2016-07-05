class CreateElectoraldata < ActiveRecord::Migration
  def change
    create_table :electoraldata do |t|
    	t.string "region", :limit => 50
    	t.string "constituency", :limit => 50
    	t.string "electoralarea", :limit => 50
    	t.string "psname", :limit => 50
    	t.string "edpscode", :limit => 50
      t.timestamps null: false
    end
  end
end
