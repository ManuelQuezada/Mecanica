class CreateMecanicos < ActiveRecord::Migration
  def change
    create_table :mecanicos do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps null: false
    end
  end
end
