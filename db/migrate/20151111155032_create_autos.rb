class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :patente
      t.string :color

      t.timestamps null: false
    end
  end
end
