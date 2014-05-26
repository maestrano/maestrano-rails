class CreateAdminMonsters < ActiveRecord::Migration
  def change
    create_table :admin_monsters do |t|

      t.timestamps
    end
  end
end
