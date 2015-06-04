# This migration comes from calagator (originally 20110220001008)
class AddWifiFlagToVenues < ActiveRecord::Migration
  def self.up
    add_column :venues, :wifi, :boolean, :default => false
  end

  def self.down
    remove_column :venues, :wifi
  end
end
