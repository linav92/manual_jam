class DropUser < ActiveRecord::Migration[5.1]
  def change
    drop_table :users do |t|
      tt.string "name"
      t.string "email"
      t.string "password_digest"
      t.timestamps null: false
    end
  end
end
