class CreateConferencia < ActiveRecord::Migration[6.1]
  def change
    create_table :conferencia do |t|

      t.timestamps
    end
  end
end
