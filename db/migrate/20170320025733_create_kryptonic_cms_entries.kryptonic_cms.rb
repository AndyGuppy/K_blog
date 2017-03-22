# This migration comes from kryptonic_cms (originally 20170320025307)
class CreateKryptonicCmsEntries < ActiveRecord::Migration


  def change
  	# Single Table Inheritance Model
    create_table :kryptonic_cms_entries do |t|
    	t.string :type, index: true
	  	t.string :title
		t.string :slug, index: true
		t.json :payload
		t.integer :user_id, index: true
		t.string :author_name

		t.datetime :published_at
      	t.timestamps null: false
    end

  end

  
end
