class Mecanico < ActiveRecord::Base
  has_many :mecanico_especialidad
  has_many :especialidad, :through => :mecanico_especialidad
  has_many :auto
  validates :nombre, presence:   true
  validates :apellido, presence: true
end
