class Brain < ApplicationRecord
  belongs_to :zombie

  validates :flavor, presence: true
  validates :iq, numericality: { only_integer: true }

  before_save do
    if self.flavor == nil
      self.flavor = 0      
    end
  end
end
