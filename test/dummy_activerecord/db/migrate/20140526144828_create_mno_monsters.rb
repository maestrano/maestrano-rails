class CreateMnoMonsters < ActiveRecord::Migration
  def change
    create_table :mno_monsters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :provider
      t.string :uid
      t.string :tenant

      t.timestamps
    end
  end
end
