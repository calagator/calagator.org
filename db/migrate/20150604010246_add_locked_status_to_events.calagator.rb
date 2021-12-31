# frozen_string_literal: true
# This migration comes from calagator (originally 20150207231355)

class AddLockedStatusToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :locked, :boolean, default: false
  end
end
