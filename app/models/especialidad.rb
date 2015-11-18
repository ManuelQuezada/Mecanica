class Especialidad < ActiveRecord::Base
  has_many :mecanico_especialidad
  has_many :mecanico, :through => :mecanico_especialidad
  validates :espnombre, presence: true
  validates :esplugar,  presence: true
end
