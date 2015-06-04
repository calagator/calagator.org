# This migration comes from calagator (originally 20120831234448)
class SpecifyVenuesLatitudeAndLongitudePrecision < ActiveRecord::Migration
  def up
    change_column :venues, :latitude,  :decimal, :precision => 7, :scale => 4
    change_column :venues, :longitude, :decimal, :precision => 7, :scale => 4
  end

  def down
    change_column :venues, :latitude,  :decimal
    change_column :venues, :longitude, :decimal
  end
end
