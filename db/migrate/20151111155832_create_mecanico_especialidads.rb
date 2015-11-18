class CreateMecanicoEspecialidads < ActiveRecord::Migration
  def change
    create_table :mecanico_especialidads do |t|
      t.references :mecanico, index: true, foreign_key: true
      t.references :especialidad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
