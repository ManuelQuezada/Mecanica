class AddUsuarioIdToAuto < ActiveRecord::Migration
  def change
    add_column :autos, :usuario_id, :integer
  end
end
