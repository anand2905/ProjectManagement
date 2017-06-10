class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :s_date
      t.date :e_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
