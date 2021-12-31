# frozen_string_literal: true
# This migration comes from calagator (originally 20150206085809)

class RemoveUpdates < ActiveRecord::Migration[4.2]
  def up
    drop_table :updates
  end

  def down
    create_table :updates do |t|
      t.integer 'source_id'
      t.text    'status'
      t.timestamps
    end
  end
end
