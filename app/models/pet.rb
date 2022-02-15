class Pet < ApplicationRecord
  SPECIES = [
    'chat',
    'chien',
    'poisson rouge'
  ]

  validates :name, presence: true
  validates :specie, inclusion: { in: SPECIES, message: 'chat, chien ou poisson rouge' }

end
