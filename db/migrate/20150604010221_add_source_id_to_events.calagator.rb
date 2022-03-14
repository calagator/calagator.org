# frozen_string_literal: true
# This migration comes from calagator (originally 6)

class AddSourceIdToEvents < ActiveRecord::Migration[4.2]
  def self.up
    add_column :events, :source_id, :integer
  end

  def self.down
    remove_column :events, :source_id
  end
end
