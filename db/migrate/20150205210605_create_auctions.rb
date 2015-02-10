class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
    	t.string :seller_id
    	t.string :winner_id
    	t.string :name
    	t.datetime :end_date
      t.integer :total_bids_num
      t.integer :end_price
    	t.boolean :available, default: false
      t.timestamps null: false
    end
  end
end
