class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :post do |t|
  		t.string :url
  		t.string :title
  		t.timestamps
  	end
  end
  
  def down
  end
end
