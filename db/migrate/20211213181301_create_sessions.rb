class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.references :tracks, null: false, foreign_key: true

      t.timestamps
    end
  end
end
