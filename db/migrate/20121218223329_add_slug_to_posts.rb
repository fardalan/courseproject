 class AddSlugToPosts < ActiveRecord::Migration
  def change 
  	add_column :post, :slug, :string
  end
end

