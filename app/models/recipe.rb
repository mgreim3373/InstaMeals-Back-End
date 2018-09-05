class Recipe < ApplicationRecord
  belongs_to :user
  validates :name, :photo, :prep_time, :user_id, :cook_time, :serving_size, :pot_mode, :pot_pressure, :ingredient, :prep_instruction, presence: true
  validates :prep_time, numericality: { only_integer: true }
  validates :user_id, numericality: { only_integer: true }
  validates :cook_time, numericality: { only_integer: true }
  validates :serving_size, numericality: { only_integer: true}
end
