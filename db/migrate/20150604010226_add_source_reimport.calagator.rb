# frozen_string_literal: true
# This migration comes from calagator (originally 12)

class AddSourceReimport < ActiveRecord::Migration[4.2]
  def self.up
    add_column :sources, :reimport, :boolean
  end

  def self.down
    remove_column :sources, :reimport
  end
end
