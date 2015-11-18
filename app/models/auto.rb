class Auto < ActiveRecord::Base
  validates :patente, presence: true
  validates :color,   presence: true
  belongs_to :usuario
end
