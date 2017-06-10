class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.text :email
      t.string :password_digest
      t.string :developer_id

      t.timestamps
    end
  end
end
