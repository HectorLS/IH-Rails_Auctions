class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
    	t.string :seller_id
    	t.string :winner_id
    	t.string :name
    	t.datetime :ending_date
    	t.boolean :available, default: 0
      t.timestamps null: false
    end
  end
end
