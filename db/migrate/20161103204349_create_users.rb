class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, uniqueness: true
      t.integer :personality_id
      t.string :password_digest

      t.timestamps
    end
  end
end
