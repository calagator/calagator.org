# frozen_string_literal: true
# This migration comes from calagator (originally 20110220031117)

class AddEventsCountToVenues < ActiveRecord::Migration[4.2]
  def self.up
    add_column :venues, :events_count, :integer
  end

  def self.down
    remove_column :venues, :events_count
  end
end
