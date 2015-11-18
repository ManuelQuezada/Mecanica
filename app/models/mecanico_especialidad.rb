class MecanicoEspecialidad < ActiveRecord::Base
  belongs_to :mecanico
  belongs_to :especialidad
end
