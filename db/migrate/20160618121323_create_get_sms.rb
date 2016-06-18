class CreateGetSms < ActiveRecord::Migration
  def change
    create_table :get_sms do |t|
    	t.string "recipients", :limit => 50
    	t.string "msisdn", :limit => 50
    	t.string "keyword", :limit => 50
    	t.string "smstext"
    	t.datetime "messagetimestamp"
      t.timestamps null: false
    end
  end
end
