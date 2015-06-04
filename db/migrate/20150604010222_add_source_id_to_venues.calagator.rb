# This migration comes from calagator (originally 8)
class AddSourceIdToVenues < ActiveRecord::Migration
  def self.up
    add_column :venues, :source_id, :integer
  end

  def self.down
    remove_column :venues, :source_id
  end
end

