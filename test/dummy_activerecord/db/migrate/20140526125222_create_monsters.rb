class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|

      t.timestamps
    end
  end
end
