# This migration comes from calagator (originally 20150207231355)
class AddLockedStatusToEvents < ActiveRecord::Migration
  def change
    add_column :events, :locked, :boolean, :default => false
  end
end
