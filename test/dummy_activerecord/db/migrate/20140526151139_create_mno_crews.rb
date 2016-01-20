class CreateMnoCrews < ActiveRecord::Migration
  def change
    create_table :mno_crews do |t|
      t.string :name
      t.string :provider
      t.string :uid
      t.string :tenant

      t.timestamps
    end
  end
end
