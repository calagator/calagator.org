# This migration comes from calagator (originally 5)
class AddEndTimeToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :end_time, :timestamp
  end

  def self.down
    remove_column :events, :end_time
  end
end
