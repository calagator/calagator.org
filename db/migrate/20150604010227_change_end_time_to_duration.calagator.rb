# frozen_string_literal: true
# This migration comes from calagator (originally 13)

class ChangeEndTimeToDuration < ActiveRecord::Migration[4.2]
  def self.up
    add_column :events, :duration, :integer
    remove_column :events, :end_time
  end

  def self.down
    add_column :events, :end_time, :datetime
    remove_column :events, :duration
  end
end
