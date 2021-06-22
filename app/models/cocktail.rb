class Cocktail < ApplicationRecord

  MOSTCOMMON = %w[
    'Sugar syrup', 'Lime juice', 'Lemon juice', 'London dry gin', 'Vodka', 'Light white rum',
    'Angostura aromatic bitters', 'Orange juice', 'Triple sec liqueur', 'Dry vermouth', 'Cognac V.S.O.P', 'Pineapple juice', 'Sweet vermouth', 'Boubon whiskey', 'Apple juice',
  ]
 has_many :doses, dependent: :destroy
 has_many :ingredients, through: :doses
 validates :name, presence: true, uniqueness: true
has_one_attached :photo
end
