class CreatePalestras < ActiveRecord::Migration[6.1]
  def change
    create_table :palestras do |t|
      t.string :name
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
