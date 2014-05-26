class AddMaestranoTo<%= table_name.camelize %> < ActiveRecord::Migration
  def self.up
    change_table(:<%= table_name %>) do |t|
<%= migration_data -%>
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back this migration.
    # Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
