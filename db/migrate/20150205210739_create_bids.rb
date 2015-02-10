class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :user, index: true
      t.belongs_to :auction, index: true
    	t.float				:amount
    	t.integer 		:position
      t.timestamps 	null: false
    end
  end
end
