class CreateEspecialidads < ActiveRecord::Migration
  def change
    create_table :especialidads do |t|
      t.string :espnombre
      t.string :esplugar

      t.timestamps null: false
    end
  end
end
