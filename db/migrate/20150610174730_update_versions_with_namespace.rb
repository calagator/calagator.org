class UpdateVersionsWithNamespace < ActiveRecord::Migration
  def up
    execute "update versions set item_type = 'Calagator::Venue' where item_type = 'Venue';"
    execute "update versions set item_type = 'Calagator::Event' where item_type = 'Event';"
    execute "update versions set item_type = 'Calagator::Source' where item_type = 'Source';"
  end

  def down
    execute "update versions set item_type = 'Venue' where item_type = 'Calagator::Venue';"
    execute "update versions set item_type = 'Event' where item_type = 'Calagator::Event';"
    execute "update versions set item_type = 'Source' where item_type = 'Calagator::Source';"
  end
end
