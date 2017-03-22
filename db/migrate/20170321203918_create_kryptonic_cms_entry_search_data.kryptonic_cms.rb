# This migration comes from kryptonic_cms (originally 20170321130933)
class CreateKryptonicCmsEntrySearchData < ActiveRecord::Migration
  def change
    create_table :kryptonic_cms_entry_search_data do |t|
      t.integer :entry_id, index: true
      t.string :attr_name
      t.tsvector :search_data
      t.text :raw_data

      t.timestamps null: false
    end

    execute 'create index idx_search_data on kryptonic_cms_entry_search_data using gin(search_data)'
  end
end