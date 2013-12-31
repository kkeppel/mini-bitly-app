class CreateUrlTable < ActiveRecord::Migration
  def up
  	create_table :urls do |t|
  		t.string :short_url, index: true
  		t.string :full_url
  	end
  end

  def down
  	drop_table :urls
  end
end
